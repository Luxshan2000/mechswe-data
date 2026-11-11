# Third-party notices

MechSWE contains material from third-party open-source projects: code diffs (`patch`, `test_patch`), repository snapshots (`snapshots/*.tgz`, Python rows only) and issue texts. Each row names its repository (`repo`), the upstream URL and commit (`upstream.url`, `upstream.commit`) and the SPDX licence of that repository (`upstream.licence`). The licence of each repository applies to all code taken from it. Every Python snapshot contains the repository's own top-level licence file. Issue and PR texts stay the work of their authors. They are included for research use and link back to their source.

Our own additions (row metadata, template issue texts, generated bug patches, annotations) are under CC-BY-4.0, see `LICENSE`.

## Upstream datasets

- SWE-bench-Live MultiLang (Microsoft), MIT, https://huggingface.co/datasets/SWE-bench-Live/MultiLang: 66 rows.
- SWE-smith (SWE-bench team), MIT, https://huggingface.co/datasets/SWE-bench/SWE-smith-py (paper: arXiv 2504.21798). We use only procedurally generated bugs; the SWE-smith issue texts are not shipped (our texts replace them): 244 rows.
- SWE-rebench (Nebius), CC-BY-4.0, https://huggingface.co/datasets/nebius/SWE-rebench: 159 rows.
- SWE-rebench-V2 (Nebius), CC-BY-4.0, https://huggingface.co/datasets/nebius/SWE-rebench-V2: 159 rows.
- SWE-rebench-leaderboard (Nebius), CC-BY-4.0, https://huggingface.co/datasets/nebius/SWE-rebench-leaderboard: 37 rows.

Changes we made to rows from these datasets: we selected instances, rebuilt Python environments, re-ran validation (Python), hid the failing tests from the snapshot, normalised fields to one schema, mapped licences to SPDX ids, redacted personal e-mail addresses in issue texts, replaced the user names in Unix home-directory paths and our build paths (upstream issue texts otherwise stay as their authors wrote them; two keep Windows `C:\Users\` paths), and added family, mechanism and contamination labels. CC-BY-4.0 licence text: `LICENSES/CC-BY-4.0.txt`.

SWE-bench-Live licence notice:

```
MIT License

Copyright (c) Microsoft Corporation.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE
```

SWE-smith licence notice:

```
MIT License

Copyright (c) 2025 John Yang

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

Rows mined by us from GitHub pull requests (`source = prmine`) link to their PR in `upstream.pr`.

## Repositories

Full licence texts for every licence id below are in `LICENSES/`. `LICENSES/LicenseRef-Public-Domain.txt` records the repository's own public-domain statement. Copyright lines come from each repository's licence file at the pinned commit. Where that file names no holder, we write "Copyright the <repo> authors (see LICENSE)". Python rows also ship the licence file inside each snapshot.

### MIT (135 repositories)

- [Aleph-Alpha/ts-rs](https://github.com/Aleph-Alpha/ts-rs) (diffs only, no snapshot): Copyright (c) 2020 Aleph Alpha GmbH
- [AllenNeuralDynamics/aind-data-schema](https://github.com/AllenNeuralDynamics/aind-data-schema) (snapshot + diffs): Copyright (c) 2022 Allen Institute for Neural Dynamics
- [AzureAD/microsoft-authentication-library-for-python](https://github.com/AzureAD/microsoft-authentication-library-for-python) (snapshot + diffs): Copyright (c) Microsoft Corporation.
- [Backblaze/B2_Command_Line_Tool](https://github.com/Backblaze/B2_Command_Line_Tool) (snapshot + diffs): Copyright (c) 2015 Backblaze
- [Behat/Gherkin](https://github.com/Behat/Gherkin) (diffs only, no snapshot): Copyright (c) 2011-2013 Konstantin Kudryashov <ever.zet@gmail.com>
- [CuyZ/Valinor](https://github.com/CuyZ/Valinor) (diffs only, no snapshot): Copyright (c) 2021 Romain Canon
- [Delgan/loguru](https://github.com/Delgan/loguru) (snapshot + diffs): Copyright the Delgan/loguru authors (see LICENSE)
- [FriendsOfSymfony/FOSHttpCacheBundle](https://github.com/FriendsOfSymfony/FOSHttpCacheBundle) (diffs only, no snapshot): Copyright (c) 2010-2020 Liip, http://www.liip.ch <contact@liip.ch>
- [GREsau/schemars](https://github.com/GREsau/schemars) (diffs only, no snapshot): Copyright (c) 2019 Graham Esau
- [MarcinOrlowski/laravel-api-response-builder](https://github.com/MarcinOrlowski/laravel-api-response-builder) (diffs only, no snapshot): Copyright (c) 2016-2020 Marcin Orlowski <mail (#) marcinorlowski (.) com>
- [MartinThoma/flake8-simplify](https://github.com/MartinThoma/flake8-simplify) (snapshot + diffs): Copyright (c) 2020 Martin Thoma
- [MemPalace/mempalace](https://github.com/MemPalace/mempalace) (snapshot + diffs): Copyright (c) 2026 MemPalace Contributors
- [Milkdown/milkdown](https://github.com/Milkdown/milkdown) (diffs only, no snapshot): Copyright (c) 2020-present Mirone
- [MyreMylar/pygame_gui](https://github.com/MyreMylar/pygame_gui) (snapshot + diffs): Copyright (c) 2018 Dan Lawrence
- [Parquery/icontract](https://github.com/Parquery/icontract) (snapshot + diffs): Copyright (c) 2018 Parquery AG
- [PlasmaControl/DESC](https://github.com/PlasmaControl/DESC) (snapshot + diffs): Copyright (c) 2020 Daniel Dudt, Rory Conlin, Dario Panici, Egemen Kolemen
- [PrinsFrank/pdfparser](https://github.com/PrinsFrank/pdfparser) (diffs only, no snapshot): Copyright (c) 2024 PrinsFrank
- [PyCQA/docformatter](https://github.com/PyCQA/docformatter) (snapshot + diffs): Copyright (C) 2012-2018 Steven Myint
- [PyCQA/flake8-bugbear](https://github.com/PyCQA/flake8-bugbear) (snapshot + diffs): Copyright (c) 2016 Łukasz Langa
- [PyCQA/isort](https://github.com/PyCQA/isort) (snapshot + diffs): Copyright (c) 2013 Timothy Edmund Crosley
- [PyCQA/pyflakes](https://github.com/PyCQA/pyflakes) (snapshot + diffs): Copyright 2005-2011 Divmod, Inc.; Copyright 2013-2014 Florent Xicluna
- [PyFilesystem/pyfilesystem2](https://github.com/PyFilesystem/pyfilesystem2) (snapshot + diffs): Copyright (c) 2016-2019 Will McGugan
- [TanStack/form](https://github.com/TanStack/form) (diffs only, no snapshot): Copyright (c) 2021-present Tanner Linsley
- [TecharoHQ/anubis](https://github.com/TecharoHQ/anubis) (diffs only, no snapshot): Copyright (c) 2025 Xe Iaso <me@xeiaso.net>
- [TedDriggs/darling](https://github.com/TedDriggs/darling) (diffs only, no snapshot): Copyright (c) 2017 Ted Driggs
- [Textualize/rich](https://github.com/Textualize/rich) (snapshot + diffs): Copyright (c) 2020 Will McGugan
- [Textualize/textual](https://github.com/Textualize/textual) (snapshot + diffs): Copyright (c) 2021 Will McGugan
- [VRSEN/agency-swarm](https://github.com/VRSEN/agency-swarm) (snapshot + diffs): Copyright (c) 2023–2025 Nick Bobrowski, Arsenii Shatokhin, Artemii Shatokhin
- [XKNX/xknx](https://github.com/XKNX/xknx) (snapshot + diffs): Copyright the XKNX/xknx authors (see LICENSE)
- [adamchainz/apig-wsgi](https://github.com/adamchainz/apig-wsgi) (snapshot + diffs; 4 of 6 rows have this licence at their commit): Copyright (c) 2018-2020 Adam Johnson
- [aeye-lab/pymovements](https://github.com/aeye-lab/pymovements) (snapshot + diffs): Copyright (c) 2022 The pymovements Project Authors
- [agronholm/anyio](https://github.com/agronholm/anyio) (snapshot + diffs): Copyright (c) 2018 Alex Grönholm
- [agronholm/exceptiongroup](https://github.com/agronholm/exceptiongroup) (snapshot + diffs): Copyright (c) 2022 Alex Grönholm
- [agronholm/typeguard](https://github.com/agronholm/typeguard) (snapshot + diffs): Copyright (c) Alex Grönholm
- [aiogram/aiogram](https://github.com/aiogram/aiogram) (snapshot + diffs): Copyright (c) 2017 - present Alex Root Junior
- [alloy-framework/alloy](https://github.com/alloy-framework/alloy) (diffs only, no snapshot): Copyright 2024 Microsoft
- [apiflask/apiflask](https://github.com/apiflask/apiflask) (snapshot + diffs): Copyright (c) 2021 Grey Li
- [apostrophecms/sanitize-html](https://github.com/apostrophecms/sanitize-html) (diffs only, no snapshot): Copyright (c) 2013, 2014, 2015 P'unk Avenue LLC
- [aralroca/next-translate](https://github.com/aralroca/next-translate) (diffs only, no snapshot): Copyright (c) 2021 Aral Roca Gomez
- [asottile/add-trailing-comma](https://github.com/asottile/add-trailing-comma) (snapshot + diffs): Copyright (c) 2017 Anthony Sottile
- [asottile/pyupgrade](https://github.com/asottile/pyupgrade) (snapshot + diffs): Copyright (c) 2017 Anthony Sottile
- [auth0/auth0-python](https://github.com/auth0/auth0-python) (snapshot + diffs): Copyright (c) 2017 Auth0, Inc. <support@auth0.com> (http://auth0.com)
- [barrust/pyspellchecker](https://github.com/barrust/pyspellchecker) (snapshot + diffs): Copyright (c) 2018-2021 Tyler Barrus
- [beetbox/beets](https://github.com/beetbox/beets) (snapshot + diffs): Copyright (c) 2010-2016 Adrian Sampson
- [borntyping/python-colorlog](https://github.com/borntyping/python-colorlog) (snapshot + diffs): Copyright (c) 2012-2021 Sam Clements <sam@borntyping.co.uk>
- [bottlepy/bottle](https://github.com/bottlepy/bottle) (snapshot + diffs): Copyright (c) 2009-2024, Marcel Hellkamp.
- [brazilian-utils/brutils-python](https://github.com/brazilian-utils/brutils-python) (snapshot + diffs): Copyright (c) 2023 Brazilian Utils
- [burnash/gspread](https://github.com/burnash/gspread) (snapshot + diffs): Copyright (C) 2011-2021 Anton Burnashev
- [bvanelli/actualpy](https://github.com/bvanelli/actualpy) (snapshot + diffs): Copyright (c) Brunno Vanelli
- [cekit/cekit](https://github.com/cekit/cekit) (snapshot + diffs): Copyright (c) 2015 Red Hat
- [codekie/openapi-examples-validator](https://github.com/codekie/openapi-examples-validator) (diffs only, no snapshot): Copyright (c) 2017 Code Kie
- [cpp-linter/cpp-linter-hooks](https://github.com/cpp-linter/cpp-linter-hooks) (snapshot + diffs): Copyright (c) 2022 Xianpeng Shen
- [cthackers/adm-zip](https://github.com/cthackers/adm-zip) (diffs only, no snapshot): Copyright (c) 2012 Another-D-Mention Software and other contributors
- [cwacek/python-jsonschema-objects](https://github.com/cwacek/python-jsonschema-objects) (snapshot + diffs): Copyright (c) 2014 Chris Wacek
- [cytoscape/cytoscape.js](https://github.com/cytoscape/cytoscape.js) (diffs only, no snapshot): Copyright (c) 2016-2024, The Cytoscape Consortium.
- [danielmiessler/Fabric](https://github.com/danielmiessler/Fabric) (diffs only, no snapshot): Copyright (c) 2012-2024 Scott Chacon and others
- [davidhalter/parso](https://github.com/davidhalter/parso) (snapshot + diffs): Copyright (c) <2013-2017> <David Halter and others, see AUTHORS.txt>
- [dbader/schedule](https://github.com/dbader/schedule) (snapshot + diffs): Copyright (c) 2013 Daniel Bader (http://dbader.org)
- [dbus2/zbus](https://github.com/dbus2/zbus) (diffs only, no snapshot): Copyright (c) 2024 Zeeshan Ali Khan & zbus contributors
- [denoland/std](https://github.com/denoland/std) (diffs only, no snapshot): Copyright 2018-2022 the Deno authors.
- [docsifyjs/docsify](https://github.com/docsifyjs/docsify) (diffs only, no snapshot): Copyright (c) 2016 - present Docsify Contributors (https://github.com/docsifyjs/docsify/graphs/contributors)
- [doctrine/orm](https://github.com/doctrine/orm) (diffs only, no snapshot): Copyright (c) Doctrine Project
- [dynaconf/dynaconf](https://github.com/dynaconf/dynaconf) (snapshot + diffs): Copyright (c) 2015 Bruno Rocha
- [erikrose/parsimonious](https://github.com/erikrose/parsimonious) (snapshot + diffs): Copyright (c) 2012 Erik Rose
- [facelessuser/pymdown-extensions](https://github.com/facelessuser/pymdown-extensions) (snapshot + diffs): Copyright (c) 2014 - 2022 Isaac Muse; Copyright (c) 2013 GitHub, Inc.
- [facelessuser/soupsieve](https://github.com/facelessuser/soupsieve) (snapshot + diffs): Copyright (c) 2018 - 2021 Isaac Muse <isaacmuse@gmail.com>
- [fastapi/fastapi](https://github.com/fastapi/fastapi) (snapshot + diffs): Copyright (c) 2018 Sebastián Ramírez
- [fastapi/typer](https://github.com/fastapi/typer) (snapshot + diffs): Copyright (c) 2019 Sebastián Ramírez
- [floci-io/floci](https://github.com/floci-io/floci) (diffs only, no snapshot): Copyright (c) 2025 Hector Ventura
- [fronzbot/blinkpy](https://github.com/fronzbot/blinkpy) (snapshot + diffs): Copyright (c) 2017 Kevin Fronczak
- [gitlab4j/gitlab4j-api](https://github.com/gitlab4j/gitlab4j-api) (diffs only, no snapshot): Copyright (c) 2017-2020 Greg Messner <greg@messners.com>
- [globocom/m3u8](https://github.com/globocom/m3u8) (snapshot + diffs): Copyright (c) 2012 globo.com webmedia@corp.globo.com
- [go-task/task](https://github.com/go-task/task) (diffs only, no snapshot): Copyright (c) 2016 Andrey Nering
- [graphql-go/graphql](https://github.com/graphql-go/graphql) (diffs only, no snapshot): Copyright (c) 2015 Chris Ramón
- [graphql-python/graphene](https://github.com/graphql-python/graphene) (snapshot + diffs): Copyright (c) 2015-Present Syrus Akbary
- [gruns/icecream](https://github.com/gruns/icecream) (snapshot + diffs): Copyright 2018 Ansgar Grunseid
- [gruntwork-io/cloud-nuke](https://github.com/gruntwork-io/cloud-nuke) (diffs only, no snapshot): Copyright (c) 2020, Gruntwork, Inc.
- [hhatto/autopep8](https://github.com/hhatto/autopep8) (snapshot + diffs): Copyright (C) 2010-2011 Hideo Hattori; Copyright (C) 2011-2013 Hideo Hattori, Steven Myint; Copyright (C) 2013-2016 Hideo Hattori, Steven Myint, Bill Wendling
- [hikari-py/hikari](https://github.com/hikari-py/hikari) (snapshot + diffs): Copyright (c) 2020 Nekokatt; Copyright (c) 2021-present davfsa
- [honojs/hono](https://github.com/honojs/hono) (diffs only, no snapshot): Copyright (c) 2021 - present, Yusuke Wada and Hono contributors
- [horstoeko/zugferd](https://github.com/horstoeko/zugferd) (diffs only, no snapshot): Copyright (c) 2020 D. Erling
- [hotmeteor/spectator](https://github.com/hotmeteor/spectator) (diffs only, no snapshot): Copyright (c) 2020 Adam Campbell
- [hub4j/github-api](https://github.com/hub4j/github-api) (diffs only, no snapshot): Copyright (c) 2011- Kohsuke Kawaguchi and other contributors
- [jawah/charset_normalizer](https://github.com/jawah/charset_normalizer) (snapshot + diffs): Copyright (c) 2019 TAHRI Ahmed R.
- [jhy/jsoup](https://github.com/jhy/jsoup) (diffs only, no snapshot): Copyright (c) 2009-2025 Jonathan Hedley <https://jsoup.org/>
- [jsonata-js/jsonata](https://github.com/jsonata-js/jsonata) (diffs only, no snapshot): Copyright the jsonata-js/jsonata authors (see LICENSE)
- [keithamus/sort-package-json](https://github.com/keithamus/sort-package-json) (diffs only, no snapshot): Copyright (c) 2015 Keith Cirkel
- [keleshev/schema](https://github.com/keleshev/schema) (snapshot + diffs): Copyright (c) 2012 Vladimir Keleshev, <vladimir@keleshev.com>
- [kepano/defuddle](https://github.com/kepano/defuddle) (diffs only, no snapshot): Copyright (c) 2025 Steph Ango (@kepano)
- [life4/textdistance](https://github.com/life4/textdistance) (snapshot + diffs): Copyright 2018 @orsinium
- [macbre/sql-metadata](https://github.com/macbre/sql-metadata) (snapshot + diffs): Copyright (c) 2017 Maciej Brencz
- [marshmallow-code/apispec](https://github.com/marshmallow-code/apispec) (snapshot + diffs): Copyright Steven Loria, Jérôme Lafréchoux, and contributors
- [marshmallow-code/marshmallow](https://github.com/marshmallow-code/marshmallow) (snapshot + diffs): Copyright Steven Loria and contributors
- [matthewwithanm/python-markdownify](https://github.com/matthewwithanm/python-markdownify) (snapshot + diffs): Copyright 2012-2018 Matthew Tretter
- [mgechev/revive](https://github.com/mgechev/revive) (diffs only, no snapshot): Copyright (c) 2018 Minko Gechev
- [microsoft/fabric-cicd](https://github.com/microsoft/fabric-cicd) (snapshot + diffs): Copyright (c) Microsoft Corporation.
- [mido/mido](https://github.com/mido/mido) (snapshot + diffs): Copyright (c) Ole Martin Bjørndalen
- [mikro-orm/mikro-orm](https://github.com/mikro-orm/mikro-orm) (diffs only, no snapshot): Copyright (c) 2018 Martin Adámek
- [mozillazg/python-pinyin](https://github.com/mozillazg/python-pinyin) (snapshot + diffs): Copyright (c) 2016 mozillazg, 闲耘 <hotoo.cn@gmail.com>
- [msiemens/tinydb](https://github.com/msiemens/tinydb) (snapshot + diffs): Copyright (C) 2013 Markus Siemens <markus@m-siemens.de>
- [nodejs/undici](https://github.com/nodejs/undici) (diffs only, no snapshot): Copyright (c) Matteo Collina and Undici contributors
- [notionnext-org/NotionNext](https://github.com/notionnext-org/NotionNext) (diffs only, no snapshot): Copyright (c) 2021-present, tangly1024
- [oauth2-proxy/oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy) (diffs only, no snapshot): Copyright the oauth2-proxy/oauth2-proxy authors (see LICENSE)
- [omni-us/jsonargparse](https://github.com/omni-us/jsonargparse) (snapshot + diffs): Copyright (c) 2019-present, Mauricio Villegas <mauricio@omnius.com>
- [openai/openai-agents-js](https://github.com/openai/openai-agents-js) (diffs only, no snapshot): Copyright (c) 2025 OpenAI
- [openapi-ts/openapi-typescript](https://github.com/openapi-ts/openapi-typescript) (diffs only, no snapshot): Copyright (c) 2020 Drew Powers
- [pelletier/go-toml](https://github.com/pelletier/go-toml) (diffs only, no snapshot): Copyright (c) 2021 - 2023 Thomas Pelletier
- [playcanvas/engine](https://github.com/playcanvas/engine) (diffs only, no snapshot): Copyright (c) 2011-2026 PlayCanvas Ltd.
- [preactjs/preact](https://github.com/preactjs/preact) (diffs only, no snapshot): Copyright (c) 2015-present Jason Miller
- [psd-tools/psd-tools](https://github.com/psd-tools/psd-tools) (snapshot + diffs): Copyright (c) 2019 Kota Yamaguchi
- [psf/black](https://github.com/psf/black) (snapshot + diffs): Copyright (c) 2018 Łukasz Langa
- [pulldown-cmark/pulldown-cmark](https://github.com/pulldown-cmark/pulldown-cmark) (diffs only, no snapshot): Copyright 2015 Google Inc. All rights reserved.
- [pydantic/pydantic](https://github.com/pydantic/pydantic) (snapshot + diffs): Copyright (c) 2017 to present Pydantic Services Inc. and individual contributors.
- [pytest-dev/iniconfig](https://github.com/pytest-dev/iniconfig) (snapshot + diffs): Copyright (c) 2010 - 2023 Holger Krekel and others
- [pytest-dev/pluggy](https://github.com/pytest-dev/pluggy) (snapshot + diffs): Copyright (c) 2015 holger krekel (rather uses bitbucket/hpk42)
- [python-attrs/attrs](https://github.com/python-attrs/attrs) (snapshot + diffs): Copyright (c) 2015 Hynek Schlawack and the attrs contributors
- [python-hyper/h11](https://github.com/python-hyper/h11) (snapshot + diffs): Copyright (c) 2016 Nathaniel J. Smith <njs@pobox.com> and other contributors
- [r1chardj0n3s/parse](https://github.com/r1chardj0n3s/parse) (snapshot + diffs): Copyright (c) 2012-2019 Richard Jones <richard@python.org>
- [rectorphp/rector-symfony](https://github.com/rectorphp/rector-symfony) (diffs only, no snapshot): Copyright (c) 2017-present Tomáš Votruba (https://tomasvotruba.cz)
- [redis/lettuce](https://github.com/redis/lettuce) (diffs only, no snapshot): Copyright (c) 2023-Present, Redis Ltd.
- [reubeno/brush](https://github.com/reubeno/brush) (diffs only, no snapshot): Copyright (c) 2024 reuben olinsky
- [rollbar/rollbar-php](https://github.com/rollbar/rollbar-php) (diffs only, no snapshot): Copyright (c) 2014 Rollbar, Inc.
- [rubik/radon](https://github.com/rubik/radon) (snapshot + diffs): Copyright (c) 2012-2017 Michele Lacchia
- [schemathesis/schemathesis](https://github.com/schemathesis/schemathesis) (snapshot + diffs): Copyright (c) 2019 Kiwi.com; Copyright (c) 2020-2025 Dmitry Dygalo & Schemathesis.io
- [seperman/deepdiff](https://github.com/seperman/deepdiff) (snapshot + diffs): Copyright (c) 2014 - 2021 Sep Dehpour (Seperman) and contributors
- [sloria/environs](https://github.com/sloria/environs) (snapshot + diffs): Copyright Steven Loria
- [spatie/laravel-permission](https://github.com/spatie/laravel-permission) (diffs only, no snapshot): Copyright (c) Spatie bvba <info@spatie.be>
- [thlorenz/doctoc](https://github.com/thlorenz/doctoc) (diffs only, no snapshot): Copyright 2013 Thorsten Lorenz.
- [tobymao/sqlglot](https://github.com/tobymao/sqlglot) (snapshot + diffs): Copyright (c) 2025 Toby Mao
- [tox-dev/tox](https://github.com/tox-dev/tox) (snapshot + diffs): Copyright the tox-dev/tox authors (see LICENSE)
- [tursodatabase/limbo](https://github.com/tursodatabase/limbo) (diffs only, no snapshot): Copyright 2024 the Limbo authors
- [unplugin/unplugin-vue-components](https://github.com/unplugin/unplugin-vue-components) (diffs only, no snapshot): Copyright (c) 2020-PRESENT Anthony Fu<https://github.com/antfu>
- [vi3k6i5/flashtext](https://github.com/vi3k6i5/flashtext) (snapshot + diffs): Copyright (c) 2017 Vikash Singh (vikash.duliajan@gmail.com)
- [withastro/starlight](https://github.com/withastro/starlight) (diffs only, no snapshot): Copyright (c) 2023 [Astro contributors](https://github.com/withastro/starlight/graphs/contributors)
- [yukinarit/pyserde](https://github.com/yukinarit/pyserde) (snapshot + diffs): Copyright (c) 2021 yukinarit

### Apache-2.0 (67 repositories)

- [Beever-AI/beever-atlas](https://github.com/Beever-AI/beever-atlas) (snapshot + diffs): Copyright 2026 Beever AI Limited
- [BrianPugh/cyclopts](https://github.com/BrianPugh/cyclopts) (snapshot + diffs): Copyright the BrianPugh/cyclopts authors (see LICENSE)
- [DestinE-Climate-DT/AQUA](https://github.com/DestinE-Climate-DT/AQUA) (snapshot + diffs): Copyright 2022-2025 European Union (represented by the European Commission)
- [Enter-tainer/typstyle](https://github.com/Enter-tainer/typstyle) (diffs only, no snapshot): Copyright the Enter-tainer/typstyle authors (see LICENSE)
- [GoogleCloudPlatform/cloud-sql-python-connector](https://github.com/GoogleCloudPlatform/cloud-sql-python-connector) (snapshot + diffs): Copyright the GoogleCloudPlatform/cloud-sql-python-connector authors (see LICENSE)
- [Jc2k/aiohomekit](https://github.com/Jc2k/aiohomekit) (snapshot + diffs): Copyright 2020 Jc2k
- [Mimino666/langdetect](https://github.com/Mimino666/langdetect) (snapshot + diffs): Copyright 2014-2015 Michal "Mimino" Danilak
- [NVIDIA/hpc-container-maker](https://github.com/NVIDIA/hpc-container-maker) (snapshot + diffs): Copyright the NVIDIA/hpc-container-maker authors (see LICENSE)
- [PyThaiNLP/pythainlp](https://github.com/PyThaiNLP/pythainlp) (snapshot + diffs): Copyright the PyThaiNLP/pythainlp authors (see LICENSE)
- [QwenLM/qwen-code](https://github.com/QwenLM/qwen-code) (diffs only, no snapshot): Copyright 2025 Google LLC; Copyright 2025 Qwen
- [ResearchObject/ro-crate-py](https://github.com/ResearchObject/ro-crate-py) (snapshot + diffs): Copyright the ResearchObject/ro-crate-py authors (see LICENSE)
- [UmbrellaDocs/linkspector](https://github.com/UmbrellaDocs/linkspector) (diffs only, no snapshot): Copyright the UmbrellaDocs/linkspector authors (see LICENSE)
- [aio-libs/yarl](https://github.com/aio-libs/yarl) (snapshot + diffs): Copyright the aio-libs/yarl authors (see LICENSE)
- [apache/paimon](https://github.com/apache/paimon) (diffs only, no snapshot): Copyright the apache/paimon authors (see LICENSE)
- [argoproj/argo-rollouts](https://github.com/argoproj/argo-rollouts) (diffs only, no snapshot): Copyright 2017-2018 The Argo Authors
- [aristanetworks/anta](https://github.com/aristanetworks/anta) (snapshot + diffs): Copyright 2022 Arista Networks
- [arrow-py/arrow](https://github.com/arrow-py/arrow) (snapshot + diffs): Copyright 2023 Chris Smith
- [bridgecrewio/checkov](https://github.com/bridgecrewio/checkov) (snapshot + diffs): Copyright 2019 Bridgecrew
- [caddyserver/caddy](https://github.com/caddyserver/caddy) (diffs only, no snapshot): Copyright the caddyserver/caddy authors (see LICENSE)
- [caikit/caikit](https://github.com/caikit/caikit) (snapshot + diffs): Copyright the caikit/caikit authors (see LICENSE)
- [cdent/gabbi](https://github.com/cdent/gabbi) (snapshot + diffs): Copyright 2015-2016 Chris Dent
- [dadoonet/elasticsearch-beyonder](https://github.com/dadoonet/elasticsearch-beyonder) (diffs only, no snapshot): Copyright the dadoonet/elasticsearch-beyonder authors (see LICENSE)
- [dpkp/kafka-python](https://github.com/dpkp/kafka-python) (snapshot + diffs): Copyright 2015 David Arthur
- [ecmwf/earthkit-data](https://github.com/ecmwf/earthkit-data) (snapshot + diffs): Copyright 2022, European Centre for Medium Range Weather Forecasts.
- [elastic/elasticsearch-dsl-py](https://github.com/elastic/elasticsearch-dsl-py) (snapshot + diffs): Copyright the elastic/elasticsearch-dsl-py authors (see LICENSE)
- [eslint/css](https://github.com/eslint/css) (diffs only, no snapshot): Copyright the eslint/css authors (see LICENSE)
- [falconry/falcon](https://github.com/falconry/falcon) (snapshot + diffs): Copyright the falconry/falcon authors (see LICENSE)
- [getgauge/gauge](https://github.com/getgauge/gauge) (diffs only, no snapshot): Copyright the getgauge/gauge authors (see LICENSE)
- [getsentry/responses](https://github.com/getsentry/responses) (snapshot + diffs): Copyright 2015 David Cramer
- [google/textfsm](https://github.com/google/textfsm) (snapshot + diffs): Copyright the google/textfsm authors (see LICENSE)
- [google/yapf](https://github.com/google/yapf) (snapshot + diffs): Copyright the google/yapf authors (see LICENSE)
- [googleapis/python-storage](https://github.com/googleapis/python-storage) (snapshot + diffs): Copyright the googleapis/python-storage authors (see LICENSE)
- [grommet/grommet](https://github.com/grommet/grommet) (diffs only, no snapshot): Copyright the grommet/grommet authors (see LICENSE)
- [huggingface/huggingface_hub](https://github.com/huggingface/huggingface_hub) (snapshot + diffs): Copyright the huggingface/huggingface_hub authors (see LICENSE)
- [jd/tenacity](https://github.com/jd/tenacity) (snapshot + diffs): Copyright the jd/tenacity authors (see LICENSE)
- [jlowin/fastmcp](https://github.com/jlowin/fastmcp) (snapshot + diffs): Copyright the jlowin/fastmcp authors (see LICENSE)
- [jwtk/jjwt](https://github.com/jwtk/jjwt) (diffs only, no snapshot): Copyright the jwtk/jjwt authors (see LICENSE)
- [kayak/pypika](https://github.com/kayak/pypika) (snapshot + diffs): Copyright the kayak/pypika authors (see LICENSE)
- [kedacore/keda](https://github.com/kedacore/keda) (diffs only, no snapshot): Copyright 2020 The KEDA Authors.
- [kestra-io/kestra](https://github.com/kestra-io/kestra) (diffs only, no snapshot): Copyright 2019 Nigh Tech.
- [kroxylicious/kroxylicious](https://github.com/kroxylicious/kroxylicious) (diffs only, no snapshot): Copyright the kroxylicious/kroxylicious authors (see LICENSE)
- [kube-vip/kube-vip](https://github.com/kube-vip/kube-vip) (diffs only, no snapshot): Copyright the kube-vip/kube-vip authors (see LICENSE)
- [kubernetes-client/javascript](https://github.com/kubernetes-client/javascript) (diffs only, no snapshot): Copyright the kubernetes-client/javascript authors (see LICENSE)
- [kubernetes-sigs/controller-runtime](https://github.com/kubernetes-sigs/controller-runtime) (diffs only, no snapshot): Copyright the kubernetes-sigs/controller-runtime authors (see LICENSE)
- [kubernetes-sigs/kueue](https://github.com/kubernetes-sigs/kueue) (diffs only, no snapshot): Copyright 2022 The Kubernetes Authors
- [kubernetes/kube-state-metrics](https://github.com/kubernetes/kube-state-metrics) (diffs only, no snapshot): Copyright the kubernetes/kube-state-metrics authors (see LICENSE)
- [less/less.js](https://github.com/less/less.js) (diffs only, no snapshot): Copyright the less/less.js authors (see LICENSE)
- [lima-vm/lima](https://github.com/lima-vm/lima) (diffs only, no snapshot): Copyright the lima-vm/lima authors (see LICENSE)
- [magefile/mage](https://github.com/magefile/mage) (diffs only, no snapshot): Copyright 2017 the Mage authors
- [microsoft/playwright-java](https://github.com/microsoft/playwright-java) (diffs only, no snapshot): Copyright the microsoft/playwright-java authors (see LICENSE)
- [mitsuhiko/insta](https://github.com/mitsuhiko/insta) (diffs only, no snapshot): Copyright the mitsuhiko/insta authors (see LICENSE)
- [mozilla/bleach](https://github.com/mozilla/bleach) (snapshot + diffs): Copyright (c) 2014-2017, Mozilla Foundation
- [mozilla/pdf.js](https://github.com/mozilla/pdf.js) (diffs only, no snapshot): Copyright the mozilla/pdf.js authors (see LICENSE)
- [mvel/mvel](https://github.com/mvel/mvel) (diffs only, no snapshot): Copyright the mvel/mvel authors (see LICENSE)
- [networknt/json-schema-validator](https://github.com/networknt/json-schema-validator) (diffs only, no snapshot): Copyright the networknt/json-schema-validator authors (see LICENSE)
- [openai/codex-plugin-cc](https://github.com/openai/codex-plugin-cc) (diffs only, no snapshot): Copyright the openai/codex-plugin-cc authors (see LICENSE)
- [opendataloader-project/opendataloader-pdf](https://github.com/opendataloader-project/opendataloader-pdf) (diffs only, no snapshot): Copyright the opendataloader-project/opendataloader-pdf authors (see LICENSE)
- [psf/requests](https://github.com/psf/requests) (snapshot + diffs): Copyright the psf/requests authors (see LICENSE)
- [python-scim/scim2-models](https://github.com/python-scim/scim2-models) (snapshot + diffs): Copyright the python-scim/scim2-models authors (see LICENSE)
- [python-wheel-build/fromager](https://github.com/python-wheel-build/fromager) (snapshot + diffs): Copyright 2024 Fromager Authors
- [quarkiverse/quarkus-operator-sdk](https://github.com/quarkiverse/quarkus-operator-sdk) (diffs only, no snapshot): Copyright the quarkiverse/quarkus-operator-sdk authors (see LICENSE)
- [siimon/prom-client](https://github.com/siimon/prom-client) (diffs only, no snapshot): Copyright 2015 Simon Nyberg
- [springdoc/springdoc-openapi](https://github.com/springdoc/springdoc-openapi) (diffs only, no snapshot): Copyright the springdoc/springdoc-openapi authors (see LICENSE)
- [spulec/freezegun](https://github.com/spulec/freezegun) (snapshot + diffs): Copyright 2012 Steve Pulec
- [stripe/stripe-cli](https://github.com/stripe/stripe-cli) (diffs only, no snapshot): Copyright the stripe/stripe-cli authors (see LICENSE)
- [wiremock/wiremock](https://github.com/wiremock/wiremock) (diffs only, no snapshot): Copyright the wiremock/wiremock authors (see LICENSE)
- [xlate/staedi](https://github.com/xlate/staedi) (diffs only, no snapshot): Copyright the xlate/staedi authors (see LICENSE)

### BSD-3-Clause (28 repositories)

- [Python-Markdown/markdown](https://github.com/Python-Markdown/markdown) (snapshot + diffs): Copyright 2007, 2008 The Python Markdown Project (v. 1.7 and later); Copyright 2004, 2005, 2006 Yuri Takhteyev (v. 0.2-1.6b); Copyright 2004 Manfred Stienstra (the original version)
- [RDFLib/rdflib](https://github.com/RDFLib/rdflib) (snapshot + diffs): Copyright (c) 2002-2021, RDFLib Team
- [aaugustin/websockets](https://github.com/aaugustin/websockets) (snapshot + diffs): Copyright (c) 2013-2019 Aymeric Augustin and contributors.
- [alecthomas/voluptuous](https://github.com/alecthomas/voluptuous) (snapshot + diffs): Copyright (c) 2010, Alec Thomas
- [andialbrecht/sqlparse](https://github.com/andialbrecht/sqlparse) (snapshot + diffs): Copyright (c) 2016, Andi Albrecht <albrecht.andi@gmail.com>
- [beeware/briefcase](https://github.com/beeware/briefcase) (snapshot + diffs): Copyright (c) 2015 Russell Keith-Magee.
- [cogent3/cogent3](https://github.com/cogent3/cogent3) (snapshot + diffs): Copyright 2019-2021 Gavin Huttley
- [encode/httpx](https://github.com/encode/httpx) (snapshot + diffs): Copyright © 2019, [Encode OSS Ltd](https://www.encode.io/).
- [encode/starlette](https://github.com/encode/starlette) (snapshot + diffs): Copyright © 2018, [Encode OSS Ltd](https://www.encode.io/).
- [encode/uvicorn](https://github.com/encode/uvicorn) (snapshot + diffs): Copyright © 2017-present, [Encode OSS Ltd](https://www.encode.io/).
- [enthought/okonomiyaki](https://github.com/enthought/okonomiyaki) (snapshot + diffs): Copyright (c) 2013, Enthought, Inc.
- [gitpython-developers/GitPython](https://github.com/gitpython-developers/GitPython) (snapshot + diffs): Copyright (C) 2008, 2009 Michael Trier and contributors
- [google/starlark-go](https://github.com/google/starlark-go) (diffs only, no snapshot): Copyright (c) 2017 The Bazel Authors.  All rights reserved.
- [gweis/isodate](https://github.com/gweis/isodate) (snapshot + diffs): Copyright (c) 2021, Hugo van Kemenade and contributors; Copyright (c) 2009-2018, Gerhard Weis and contributors; Copyright (c) 2009, Gerhard Weis
- [hapijs/joi](https://github.com/hapijs/joi) (diffs only, no snapshot): Copyright (c) 2012-2022, Project contributors.; Copyright (c) 2012-2022, Sideway. Inc.; Copyright (c) 2012-2014, Walmart.
- [horejsek/python-fastjsonschema](https://github.com/horejsek/python-fastjsonschema) (snapshot + diffs): Copyright (c) 2018, Michal Horejsek
- [kjd/idna](https://github.com/kjd/idna) (snapshot + diffs): Copyright (c) 2013-2021, Kim Davies
- [laminas/laminas-validator](https://github.com/laminas/laminas-validator) (diffs only, no snapshot): Copyright (c) 2020 Laminas Project a Series of LF Projects, LLC.
- [lepture/mistune](https://github.com/lepture/mistune) (snapshot + diffs): Copyright (c) 2014, Hsiaoming Yang
- [mahmoud/glom](https://github.com/mahmoud/glom) (snapshot + diffs): Copyright (c) 2018, Mahmoud Hashemi
- [maplibre/maplibre-gl-js](https://github.com/maplibre/maplibre-gl-js) (diffs only, no snapshot): Copyright (c) 2023, MapLibre contributors; Copyright (c) 2020, Mapbox; Copyright (C) 2011 by Evan Wallace; Copyright 2010-2016 Mike Bostock
- [mpmath/mpmath](https://github.com/mpmath/mpmath) (snapshot + diffs): Copyright (c) 2005-2025 Fredrik Johansson and mpmath contributors
- [oauthlib/oauthlib](https://github.com/oauthlib/oauthlib) (snapshot + diffs): Copyright (c) 2019 The OAuthlib Community
- [pallets/click](https://github.com/pallets/click) (snapshot + diffs): Copyright 2014 Pallets
- [pallets/jinja](https://github.com/pallets/jinja) (snapshot + diffs): Copyright 2007 Pallets
- [pallets/markupsafe](https://github.com/pallets/markupsafe) (snapshot + diffs): Copyright 2010 Pallets
- [php/pie](https://github.com/php/pie) (diffs only, no snapshot): Copyright (c) 2024, The PHP Foundation.
- [prettytable/prettytable](https://github.com/prettytable/prettytable) (snapshot + diffs): Copyright the prettytable/prettytable authors (see LICENSE)

### MIT OR Apache-2.0 (6 repositories)

- [cargo-generate/cargo-generate](https://github.com/cargo-generate/cargo-generate) (diffs only, no snapshot): Copyright (c) 2018 Ashley Williams
- [davidlattimore/wild](https://github.com/davidlattimore/wild) (diffs only, no snapshot): Copyright the davidlattimore/wild authors (see LICENSE)
- [dtolnay/async-trait](https://github.com/dtolnay/async-trait) (diffs only, no snapshot): Copyright the dtolnay/async-trait authors (see LICENSE)
- [servo/html5ever](https://github.com/servo/html5ever) (diffs only, no snapshot): Copyright (c) 2014 The html5ever Project Developers
- [sharkdp/bat](https://github.com/sharkdp/bat) (diffs only, no snapshot): Copyright (c) 2018-2023 bat-developers (https://github.com/sharkdp/bat).
- [veryl-lang/veryl](https://github.com/veryl-lang/veryl) (diffs only, no snapshot): Copyright (c) 2022 Naoye Hatta <dalance@gmail.com>; Copyright 2022 Naoye Hatta <dalance@gmail.com>

### BSD-2-Clause (5 repositories)

- [alvinwan/TexSoup](https://github.com/alvinwan/TexSoup) (snapshot + diffs): Copyright (c) 2016, Alvin Wan
- [flyingcircusio/batou](https://github.com/flyingcircusio/batou) (snapshot + diffs): Copyright (c) 2012-2014, gocept gmbh & co. kg; Copyright (c) 2015-2021, Flying Circus Internet Operations GmbH
- [jhlywa/chess.js](https://github.com/jhlywa/chess.js) (diffs only, no snapshot): Copyright (c) 2025, Jeff Hlywa (jhlywa@gmail.com)
- [pyasn1/pyasn1](https://github.com/pyasn1/pyasn1) (snapshot + diffs): Copyright (c) 2005-2020, Ilya Etingof <etingof@gmail.com>
- [pygments/pygments](https://github.com/pygments/pygments) (snapshot + diffs): Copyright (c) 2006-2022 by the respective authors (see AUTHORS file).

### Apache-2.0 OR BSD-2-Clause (1 repositories)

- [pypa/packaging](https://github.com/pypa/packaging) (snapshot + diffs): Copyright (c) Donald Stufft and individual contributors.

### Apache-2.0 OR MIT (1 repositories)

- [linebender/vello](https://github.com/linebender/vello) (diffs only, no snapshot): Copyright 2020 the Vello Authors

### CC0-1.0 (1 repositories)

- [casey/just](https://github.com/casey/just) (diffs only, no snapshot): Copyright the casey/just authors (see LICENSE)

### EPL-2.0 OR BSD-3-Clause (1 repositories)

- [eclipse-ee4j/yasson](https://github.com/eclipse-ee4j/yasson) (diffs only, no snapshot): Copyright (c) 2007, Eclipse Foundation, Inc. and its licensors.

### EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0 (1 repositories)

- [eclipse-ee4j/mojarra](https://github.com/eclipse-ee4j/mojarra) (diffs only, no snapshot): Copyright the eclipse-ee4j/mojarra authors (see LICENSE)

### GPL-3.0-only (1 repositories)

- [monkeytypegame/monkeytype](https://github.com/monkeytypegame/monkeytype) (diffs only, no snapshot): Copyright the monkeytypegame/monkeytype authors (see LICENSE)

### ISC (1 repositories)

- [adamchainz/apig-wsgi](https://github.com/adamchainz/apig-wsgi) (snapshot + diffs; 2 of 6 rows have this licence at their commit): Copyright (c) 2018-2020 Adam Johnson

### LGPL-3.0-only (1 repositories)

- [jtroo/kanata](https://github.com/jtroo/kanata) (diffs only, no snapshot): Copyright the jtroo/kanata authors (see LICENSE)

### LGPL-3.0-or-later (1 repositories)

- [opentripplanner/OpenTripPlanner](https://github.com/opentripplanner/OpenTripPlanner) (diffs only, no snapshot): Copyright (C) 2011 Brian Ferris <bdferris@onebusaway.org>; Copyright (C) 2012 Google, Inc.; Copyright (C) 2013 Codemass, Inc. <aaron@codemass.com>; Copyright (C) 2011 Laurent Gregoire <laurent.gregoire@gmail.com>

### LicenseRef-Public-Domain (1 repositories)

- [stleary/JSON-java](https://github.com/stleary/JSON-java) (diffs only, no snapshot): Copyright the stleary/JSON-java authors (see LICENSE)

### MPL-2.0 (1 repositories)

- [VHDL-LS/rust_hdl](https://github.com/VHDL-LS/rust_hdl) (diffs only, no snapshot): Copyright (c) 2018, Olof Kraigher olof.kraigher@gmail.com

### ZPL-2.1 (1 repositories)

- [Pylons/waitress](https://github.com/Pylons/waitress) (snapshot + diffs): Copyright the Pylons/waitress authors (see LICENSE)

## Files and repositories with extra terms

- Copyleft or weak-copyleft repositories (VHDL-LS/rust_hdl, eclipse-ee4j/mojarra, eclipse-ee4j/yasson, jtroo/kanata, monkeytypegame/monkeytype, opentripplanner/OpenTripPlanner) appear only in multilang. No snapshot ships for them. Their diffs (`patch`, `test_patch`) are code and stay under the repository licence. Python snapshots of permissive repositories can still hold copyleft files; see Python-Markdown below.
- adamchainz/apig-wsgi: `rb_adamchainz_apig_wsgi_118` is under ISC at its pinned commit (the repository moved from ISC to MIT in 2020). The snapshot holds the ISC licence file; text in `LICENSES/ISC.txt`.
- adamchainz/apig-wsgi: `rb_adamchainz_apig_wsgi_156` is under ISC at its pinned commit (the repository moved from ISC to MIT in 2020). The snapshot holds the ISC licence file; text in `LICENSES/ISC.txt`.
- Python-Markdown/markdown: `tests/php/` holds GPL-2.0 test fixtures (licence file `tests/php/License` kept in the snapshot; rows carry flag `snapshot_gpl_test_data`; text in `LICENSES/GPL-2.0.txt`).
- psf/black: `src/blib2to3` is under PSF-2.0 (licence file kept in the snapshot; text in `LICENSES/PSF-2.0.txt`).
- google/yapf: `third_party/.../_ylib2to3` is under PSF-2.0 (licence file kept in the snapshot; text in `LICENSES/PSF-2.0.txt`).
- RDFLib/rdflib: W3C test suites under `test/` keep the W3C Test Suite / Software licence (text in `LICENSES/LicenseRef-W3C-Test-Suite.txt`).
- hikari-py/hikari: `examples/` are CC0-1.0 (text in `LICENSES/CC0-1.0.txt`).
- MyreMylar/pygame_gui: the snapshots ship fonts: Fira Code, Fira Mono and Noto Sans fonts under OFL-1.1 (text in `LICENSES/OFL-1.1.txt`; some older snapshots do not hold the Noto licence file) and the test font `tests/data/Roboto-Regular.ttf` under Apache-2.0 (text in `LICENSES/Apache-2.0.txt`).
- mido/mido: the snapshots follow REUSE: docs are CC-BY-4.0, logos CC-BY-SA-3.0 and some small files CC0-1.0 (see the snapshot's `.reuse/dep5`, `*.license` files and `LICENSES/`; texts also in `LICENSES/` here).
- PyThaiNLP/pythainlp: the snapshot of `rb_PyThaiNLP_pythainlp_1046` contains `bin/act`, a 13,385,728-byte executable that is part of the upstream repository at that commit. It is third-party binary code under the repository's terms. We did not remove it.
- psf/requests: the upstream `ext/` folder (logos and photos marked "All rights reserved") was removed from every snapshot.

## NOTICE files (Apache-2.0)

Apache-2.0 section 4(d) asks that NOTICE files are passed on. These are the NOTICE texts of the shipped repositories that have one, copied unchanged from the pinned commit.

### Beever-AI/beever-atlas

```
Beever Atlas
Copyright 2026 Beever AI Limited

This product includes software developed by the Beever Atlas contributors.
Licensed under the Apache License, Version 2.0 (see LICENSE).

"Beever Atlas" and the Beever logo are unregistered trademarks of Beever AI
Limited. See TRADEMARK.md for the full trademark policy.

-------------------------------------------------------------------------------
Third-party dependencies and their licenses
-------------------------------------------------------------------------------

The following third-party libraries are used by Beever Atlas. Each is the
property of its respective copyright holders and distributed under its own
license. This list is informational; the binding terms are each project's own
license text.

  * Google ADK (google-adk)
      License: Apache License 2.0
      https://github.com/google/adk-python

  * LiteLLM
      License: MIT
      https://github.com/BerriAI/litellm

  * Weaviate Python client (weaviate-client)
      License: BSD 3-Clause
      https://github.com/weaviate/weaviate-python-client

  * Neo4j Python driver (neo4j)
      License: Apache License 2.0
      https://github.com/neo4j/neo4j-python-driver

  * FastAPI
      License: MIT
      https://github.com/tiangolo/fastapi

  * pydantic
      License: MIT
      https://github.com/pydantic/pydantic

  * shadcn/ui
      License: MIT
      https://github.com/shadcn-ui/ui

  * Cytoscape.js
      License: MIT
      https://github.com/cytoscape/cytoscape.js

  * Mermaid
      License: MIT
      https://github.com/mermaid-js/mermaid

  * DOMPurify
      License: Apache License 2.0 OR Mozilla Public License 2.0 (dual-licensed)
      https://github.com/cure53/DOMPurify

Each library's full license text is available in its own repository and in
the installed package metadata.
```

### Mimino666/langdetect

```
language-detection license
==========================

    Copyright (c) 2010-2014 Cybozu Labs, Inc. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
```

### aio-libs/yarl

```
Copyright 2016-2021, Andrew Svetlov and aio-libs team

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
```

### apache/paimon

```
Apache Paimon
Copyright 2023-2026 The Apache Software Foundation

This product includes software developed at
The Apache Software Foundation (http://www.apache.org/).

Apache Flink
Copyright 2014-2023 The Apache Software Foundation

Apache Hadoop
Copyright 2006 and onwards The Apache Software Foundation.

Apache Iceberg
Copyright 2017-2022 The Apache Software Foundation

Apache Hive
Copyright 2008-2017 The Apache Software Foundation

Flink Connector for Apache Doris
Copyright 2018-2023 The Apache Software Foundation

----------------------------------------------------------

AWS SDK for Java
Copyright 2010-2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.

This product includes software developed by
Amazon Technologies, Inc (http://www.amazon.com/).

----------------------------------------------------------

PalDB

(c) 2015 LinkedIn Corp. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License. You may obtain a copy of the
License at  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied.

----------------------------------------------------------

flink-cdc-connectors
Copyright 2022 Ververica Inc.
Apache Flink, Flink®, Apache®, the squirrel logo, and the Apache feather logo are either registered trademarks or trademarks of The Apache Software Foundation.

----------------------------------------------------------

Chroma
Copyright (C) 2017 Alec Thomas

----------------------------------------------------------
```

### apiflask/apiflask

```
APIFlask includes some code from third-party libraries.

## APIFairy

Copyright (c) 2020 Miguel Grinberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Flask

Copyright 2010 Pallets

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1.  Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

2.  Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

3.  Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## Flask-Marshmallow

Copyright 2014-2020 Steven Loria and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```

### aristanetworks/anta

```
ANTA Project

Copyright 2024 Arista Networks

This product includes software developed at Arista Networks.

------------------------------------------------------------------------

This product includes software developed by contributors from the
following projects, which are also licensed under the Apache License, Version 2.0:

1. aio-eapi
   - Copyright 2024 Jeremy Schulman
   - URL: https://github.com/jeremyschulman/aio-eapi

------------------------------------------------------------------------

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

### eclipse-ee4j/mojarra

```
# Notices for Eclipse Mojarra

This content is produced and maintained by the Eclipse Mojarra project.

* Project home: https://projects.eclipse.org/projects/ee4j.mojarra

## Trademarks

Eclipse Mojarra is a trademark of the Eclipse Foundation.

## Copyright

All content is the property of the respective authors or their employers. For
more information regarding authorship of content, please consult the listed
source code repository logs.

## Declared Project Licenses

This program and the accompanying materials are made available under the terms
of the Eclipse Public License v. 2.0 which is available at
http://www.eclipse.org/legal/epl-2.0. This Source Code may also be made
available under the following Secondary Licenses when the conditions for such
availability set forth in the Eclipse Public License v. 2.0 are satisfied: GNU
General Public License, version 2 with the GNU Classpath Exception which is
available at https://www.gnu.org/software/classpath/license.html.

SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

## Source Code

The project maintains the following source code repositories:

* https://github.com/eclipse-ee4j/mojarra

## Third-party Content

## Cryptography

Content may contain encryption software. The country in which you are currently
may have restrictions on the import, possession, and use, and/or re-export to
another country, of encryption software. BEFORE using any encryption software,
please check the country's laws, regulations and policies concerning the import,
possession, or use, and re-export of encryption software, to see if this is
permitted.
```

### eclipse-ee4j/yasson

```
# Notices for Eclipse Yasson

This content is produced and maintained by the Eclipse Yasson project.

* Project home: https://projects.eclipse.org/projects/ee4j.yasson

## Trademarks

Eclipse Yasson is a trademark of the Eclipse Foundation.

## Copyright

All content is the property of the respective authors or their employers. For
more information regarding authorship of content, please consult the listed
source code repository logs.

## Declared Project Licenses

This program and the accompanying materials are made available under the terms
of the Eclipse Public License v. 2.0 which is available at
http://www.eclipse.org/legal/epl-v20.html, or the Eclipse Distribution License
v. 1.0 which is available at http://www.eclipse.org/org/documents/edl-v10.php.

SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause

## Source Code

The project maintains the following source code repositories:

* https://github.com/eclipse/yasson
* https://github.com/eclipse-ee4j/yasson

## Third-party Content

cdi-api 2.0 (JSR 365: Contexts and Dependency Injection for Java (2.0)


## Cryptography

Content may contain encryption software. The country in which you are currently
may have restrictions on the import, possession, and use, and/or re-export to
another country, of encryption software. BEFORE using any encryption software,
please check the country's laws, regulations and policies concerning the import,
possession, or use, and re-export of encryption software, to see if this is
permitted.
```

### marshmallow-code/marshmallow

```
marshmallow includes code adapted from Django.

Django License
==============

Copyright (c) Django Software Foundation and individual contributors.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice,
       this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.

    3. Neither the name of Django nor the names of its contributors may be used
       to endorse or promote products derived from this software without
       specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

### psf/requests

```
Requests
Copyright 2019 Kenneth Reitz
```

### sharkdp/bat

```
Copyright (c) 2018-2021 bat-developers (https://github.com/sharkdp/bat).

bat is made available under the terms of either the MIT License or the Apache
License 2.0, at your option.

See the LICENSE-APACHE and LICENSE-MIT files for license details.
```

### tursodatabase/limbo

```
Limbo 
=======

Please visit our GitHub for more information:

* https://github.com/tursodatabase/limbo

Dependencies
============

This product depends on Error Prone, distributed by the Error Prone project:

* License: licenses/bindings/java/assertj-license.md (Apache License v2.0)
* Homepage: https://github.com/google/error-prone

This product depends on AssertJ, distributed by the AssertJ authors:

* License: licenses/bindings/java/errorprone-license.md (Apache License v2.0)
* Homepage: https://joel-costigliola.github.io/assertj/

This product depends on logback, distributed by the logback authors: 

* License: licenses/bindings/java/logback-license.md (Apache License v2.0)
* Homepage: https://github.com/qos-ch/logback?tab=License-1-ov-file 

This product depends on spotless, distributed by the diffplug authors:

* License: licenses/bindings/java/spotless-license.md (Apache License v2.0)
* Homepage: https://github.com/diffplug/spotless

This product depends on serde, distributed by the serde-rs project: 

* License: licenses/core/serde-apache-license.md (Apache License v2.0)
* License: licenses/core/serde-mit-license.md (MIT License)
* Homepage: https://github.com/serde-rs/serde

This product depends on serde_json5, distributed 

* License: licenses/core/serde_json5-license.md (Apache License v2.0)
* Homepage: https://github.com/google/serde_json5

This project depends on ipnetwork, distributed by the ipnetwork project:

* License: licenses/extensions/ipnetwork-apache-license.md (Apache License v2.0)
* License: licenses/extensions/ipnetwork-mit-license.md (MIT License)
* Homepage: https://github.com/achanda/ipnetwork
```
