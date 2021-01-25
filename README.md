[![License](https://img.shields.io/github/license/Crazy-Marvin/yogibot-api.svg)](https://github.com/Crazy-Marvin/yogibot-api/blob/development/LICENSE)
[![Last commit](https://img.shields.io/github/last-commit/Crazy-Marvin/yogibot-api.svg?style=flat)](https://github.com/Crazy-Marvin/yogibot-api/commits)
[![Issues](https://img.shields.io/github/issues/Crazy-Marvin/yogibot-api.svg?style=flat)](https://github.com/Crazy-Marvin/yogibot-api/issues)
[![Pull requests](https://img.shields.io/github/issues-pr/Crazy-Marvin/yogibot-api.svg?style=flat)](https://github.com/Crazy-Marvin/yogibot-api/pulls)
[![API](https://img.shields.io/badge/API-v2-brightgreen.svg?style=flat)](https://poopjournal.rocks/YogiBot/API/v2/)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/404ccbb80ef9407e868f2903a92d4c21)](https://www.codacy.com/app/CrazyMarvin/yogibot-api?utm_source=github.com&utm_medium=referral&utm_content=Crazy-Marvin/yogibot-api&utm_campaign=badger)
[![StyleCI](https://styleci.io/repos/87644457/shield?style=flat&branch=master)](https://styleci.io/repos/87644457)

# YogiBot API

The YogiBot API is the backend for the YogiBot website and other apps. Because the API is public other projects can use it too. 
The sayings are from a tea I love to drink: <a href="https://www.yogitea.com/">YOGI TEA</a>.


# Database
![db](https://user-images.githubusercontent.com/15004217/105754134-fc97f300-5f49-11eb-9d8d-bb8b84b3ac29.jpg)

The database has four rows:
- **number** (primary key & auto increment): used as primary key
- **language** (two-letter language code e.g. ```en```): used to determine the language of the saying
- **saying** ([UNIQUE](https://dev.mysql.com/doc/refman/8.0/en/partitioning-limitations-partitioning-keys-unique-keys.html)): the saying itself
- **comment**: optional field to put some info in

The charset should be *utf8_general_ci* or similar so that special characters are shown.

Database exports are available in the ```dumps``` folder.

# Versioning

[v1](https://poopjournal.rocks/YogiBot/API/v1/): depreceated

[v2](https://poopjournal.rocks/YogiBot/API/v2/): latest version

[v3](https://poopjournal.rocks/YogiBot/API/v3/): alpha

# Admin frontend
In the folder ```frontend``` is PHP script that can be used for administration like filling the database.

# Clients

Those are the available clients:

### First party:
* [yogibot-website](https://github.com/Crazy-Marvin/yogibot-website)
* [yogibot-elm](https://github.com/Crazy-Marvin/yogibot-elm)
* [yogibot-desktop](https://github.com/Crazy-Marvin/yogibot-desktop)
* [yogibot-electron](https://github.com/Crazy-Marvin/yogibot-electron)
* [yogibot-net](https://github.com/Crazy-Marvin/yogibot-net)
* [yogibot-flutter](https://github.com/Crazy-Marvin/yogibot-flutter)
* [yogibot-android](https://github.com/Crazy-Marvin/yogibot-android)
* [yogibot-ios](https://github.com/Crazy-Marvin/yogibot-ios)
* [yogibot-cli](https://github.com/Crazy-Marvin/yogibot-cli)
* [yogibot-discord](https://github.com/Crazy-Marvin/yogibot-discord)
* [yogibot-slack](https://github.com/Crazy-Marvin/yogibot-slack)
* [yogibot-telegram](https://github.com/Crazy-Marvin/yogibot-telegram)
* [yogibot-teams](https://github.com/Crazy-Marvin/yogibot-teams)
* [yogibot-voice](https://github.com/Crazy-Marvin/yogibot-voice)

### Third party:
Please open a PR and add your repo (or URL if not open source) here

# Contributing

Pull Requests and other support is more than welcome. Please check out the [CONTRIBUTING.md](https://github.com/Crazy-Marvin/yogibot-api/blob/master/.github/CONTRIBUTING.md).

# License

[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html.en)
