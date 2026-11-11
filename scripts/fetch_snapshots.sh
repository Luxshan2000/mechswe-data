#!/usr/bin/env bash
# Download the repository snapshots from the GitHub release of Luxshan2000/mechswe-data and unpack them into
# <subset>/snapshots/<instance_id>.tgz. Run it from a clone of the repository.
#
# Needs: bash, tar, shasum or sha256sum, and one of
#   - the GitHub CLI (gh), logged in with `gh auth login`, or
#   - curl (used when gh is missing or not logged in). curl reads the asset list of the release from the GitHub API;
#     when the API gives no list (for example, rate limit), it tries the part names in order until one is missing.
# python3 is needed for the check against MANIFEST.json; without it, the script skips that check and says so.
#
# Checks: (1) the sha256 of each downloaded snapshot tar against the .sha256 asset of the release;
#         (2) the size and sha256 of every unpacked snapshot against its entry in MANIFEST.json.
#
# Disk space: the script handles one sub-dataset at a time. It keeps the downloaded parts and the joined tar at the
# same time (about twice the tar size, in TMPDIR), then deletes the parts and extracts the tar into <subset>/snapshots.
# The largest, tasks-train, needs about 8.3 GB of temporary space plus 4.2 GB for its snapshots. All snapshots take
# about 6.4 GB. Set TMPDIR to use another disk for the temporary files.
#
# Usage: scripts/fetch_snapshots.sh [--tag <release-tag>] [subset ...]
#   default tag: v1
#   subsets with snapshots: tasks-train probe heldout rebench devh (multilang rows use upstream Docker images)
#   default subsets: each of these that has a data/ folder
set -euo pipefail
REPO="Luxshan2000/mechswe-data"
VALID=(tasks-train probe heldout rebench devh)
cd "$(dirname "$0")/.."
TAG="v1"
if [ "${1:-}" = "--tag" ]; then
  [ -n "${2:-}" ] || { echo "--tag needs a value" >&2; exit 2; }
  TAG="$2"; shift 2
fi

is_valid() { local v; for v in "${VALID[@]}"; do [ "$v" = "$1" ] && return 0; done; return 1; }
SUBSETS=()
for s in "$@"; do
  if [ "$s" = "multilang" ]; then
    echo "multilang has no snapshots: its rows run in upstream Docker images" >&2; exit 2
  fi
  is_valid "$s" || { echo "unknown subset: $s (valid names: ${VALID[*]})" >&2; exit 2; }
  SUBSETS+=("$s")
done
if [ ${#SUBSETS[@]} -eq 0 ]; then
  for d in "${VALID[@]}"; do [ -d "$d/data" ] && SUBSETS+=("$d"); done
fi
[ ${#SUBSETS[@]} -gt 0 ] || { echo "no sub-dataset folder with data/ found; run this script in a clone of $REPO" >&2; exit 1; }

if command -v shasum >/dev/null 2>&1; then SHA256=(shasum -a 256)
elif command -v sha256sum >/dev/null 2>&1; then SHA256=(sha256sum)
else echo "need shasum or sha256sum" >&2; exit 1; fi

TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

# curl_get <asset>: 0 when downloaded, 1 when the asset does not exist (HTTP 404); exits on any other error.
curl_get() {
  local code
  code=$(curl -sSL --retry 3 -o "$TMP/$1" -w '%{http_code}' "$BASE/$1") || { echo "download failed: $BASE/$1" >&2; exit 1; }
  case "$code" in
    200) return 0 ;;
    404) rm -f "$TMP/$1"; return 1 ;;
    *) echo "HTTP $code for $BASE/$1" >&2; exit 1 ;;
  esac
}

# api_assets: the asset names of the release, one per line (empty when the API gives no list)
api_assets() {
  local json
  json=$(curl -sSL --retry 3 -H "Accept: application/vnd.github+json" \
    "https://api.github.com/repos/$REPO/releases/tags/$TAG") || return 0
  if command -v python3 >/dev/null 2>&1; then
    printf '%s' "$json" | python3 -I -c '
import json, sys
try:
    data = json.load(sys.stdin)
except ValueError:
    sys.exit(0)
for a in (data.get("assets") or []) if isinstance(data, dict) else []:
    print(a.get("name", ""))
' || true
  else
    printf '%s\n' "$json" | grep -o '"name": *"snapshots-[^"]*"' | sed 's/^"name": *"//; s/"$//' || true
  fi
}

# probe_parts <subset> <letters>: download part-aaa, part-aab, ... (3 letters) or part-aa, part-ab, ... (2 letters)
# until one is missing; fails when the first one is missing.
probe_parts() {
  local n=0 a b c
  if [ "$2" = 3 ]; then
    for a in {a..z}; do for b in {a..z}; do for c in {a..z}; do
      if curl_get "snapshots-$1.tar.part-$a$b$c"; then n=$((n + 1)); else break 3; fi
    done; done; done
  else
    for a in {a..z}; do for b in {a..z}; do
      if curl_get "snapshots-$1.tar.part-$a$b"; then n=$((n + 1)); else break 2; fi
    done; done
  fi
  [ "$n" -gt 0 ]
}

ASSETS=""
if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
  METHOD="gh"
  gh release view "$TAG" -R "$REPO" --json tagName >/dev/null || { echo "no release with tag $TAG found in $REPO" >&2; exit 1; }
elif command -v curl >/dev/null 2>&1; then
  METHOD="curl"
  BASE="https://github.com/$REPO/releases/download/$TAG"
  ASSETS="$(api_assets)"
  [ -n "$ASSETS" ] || echo "no asset list from the GitHub API; trying the part names in order" >&2
else
  echo "need the GitHub CLI logged in (gh auth login) or curl" >&2; exit 1
fi
echo "release tag: $TAG (download with $METHOD)"

for s in "${SUBSETS[@]}"; do
  echo "== $s"
  if [ "$METHOD" = "gh" ]; then
    gh release download "$TAG" -R "$REPO" --pattern "snapshots-$s.tar.part-*" --dir "$TMP" --clobber
    gh release download "$TAG" -R "$REPO" --pattern "snapshots-$s.tar.sha256" --dir "$TMP" --clobber
  else
    curl_get "snapshots-$s.tar.sha256" || { echo "no asset snapshots-$s.tar.sha256 in release $TAG of $REPO" >&2; exit 1; }
    PARTS="$(printf '%s\n' "$ASSETS" | grep -E "^snapshots-$s\.tar\.part-[a-z]+$" | LC_ALL=C sort || true)"
    if [ -n "$PARTS" ]; then
      while IFS= read -r p; do
        curl_get "$p" || { echo "listed asset $p is missing in release $TAG" >&2; exit 1; }
      done <<< "$PARTS"
    else
      probe_parts "$s" 3 || probe_parts "$s" 2 || { echo "no snapshot parts for $s in release $TAG of $REPO" >&2; exit 1; }
    fi
  fi
  # join the parts in name order (the glob sorts them), then delete them before the checksum and the extraction
  cat "$TMP"/snapshots-"$s".tar.part-* > "$TMP/snapshots-$s.tar"
  rm -f "$TMP"/snapshots-"$s".tar.part-*
  (cd "$TMP" && "${SHA256[@]}" -c "snapshots-$s.tar.sha256")
  mkdir -p "$s/snapshots"
  tar -xf "$TMP/snapshots-$s.tar" -C "$s"
  rm -f "$TMP/snapshots-$s.tar" "$TMP/snapshots-$s.tar.sha256"
  echo "   $(ls "$s/snapshots" | wc -l | tr -d ' ') snapshots in $s/snapshots"
done

if ! command -v python3 >/dev/null 2>&1; then
  echo "python3 not found: skipped the check against MANIFEST.json (only the sha256 of each downloaded tar was checked)" >&2
  exit 0
fi
echo "Checking the size and sha256 of every snapshot against MANIFEST.json ..."
if python3 -I - "${SUBSETS[@]}" <<'PY'
import hashlib, json, os, sys
files = {f["path"]: f for f in json.load(open("MANIFEST.json"))["files"]}
bad = 0
for s in sys.argv[1:]:
    want = {p: f for p, f in files.items() if p.startswith(s + "/snapshots/")}
    have = {f"{s}/snapshots/{n}" for n in os.listdir(f"{s}/snapshots") if n.endswith(".tgz")}
    for p in sorted(have - want.keys()):
        print(f"   not in MANIFEST.json: {p}"); bad += 1
    for p in sorted(want.keys() - have):
        print(f"   missing: {p}"); bad += 1
    ok = 0
    for p in sorted(have & want.keys()):
        h = hashlib.sha256()
        with open(p, "rb") as fh:
            for b in iter(lambda: fh.read(1 << 20), b""):
                h.update(b)
        if os.path.getsize(p) == want[p]["bytes"] and h.hexdigest() == want[p]["sha256"]:
            ok += 1
        else:
            print(f"   size or sha256 differs from MANIFEST.json: {p}"); bad += 1
    print(f"   {s}: {ok} of {len(want)} snapshots match MANIFEST.json")
sys.exit(1 if bad else 0)
PY
then
  echo "Check passed: every snapshot matches its MANIFEST.json entry (size and sha256)."
else
  echo "Check failed: see the lines above." >&2
  exit 1
fi
