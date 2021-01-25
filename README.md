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
* [yogibot-website](https://github.com/Crazy-Marvin/yogibot-website) ![Angular Logo](https://user-images.githubusercontent.com/15004217/105760815-92d01700-5f52-11eb-9e25-dcd15dc983a3.jpg)
* [yogibot-elm](https://github.com/Crazy-Marvin/yogibot-elm) ![Elm Logo](https://user-images.githubusercontent.com/15004217/105759496-d6c21c80-5f50-11eb-86e4-4c56a638c775.jpg)
* [yogibot-desktop](https://github.com/Crazy-Marvin/yogibot-desktop) ![Python Logo](https://user-images.githubusercontent.com/15004217/105759832-39b3b380-5f51-11eb-80fc-d57840a68b09.jpg)
* [yogibot-electron](https://github.com/Crazy-Marvin/yogibot-electron) ![Electron logo](https://user-images.githubusercontent.com/15004217/105759283-8f3b9080-5f50-11eb-95b1-cda5710eeb77.jpg)
* [yogibot-net](https://github.com/Crazy-Marvin/yogibot-net) ![.NET Core Logo](https://user-images.githubusercontent.com/15004217/105760818-9368ad80-5f52-11eb-91d2-8de644fd50d0.jpg)
* [yogibot-flutter](https://github.com/Crazy-Marvin/yogibot-flutter) ![Flutter Logo](https://user-images.githubusercontent.com/15004217/105759836-3a4c4a00-5f51-11eb-95d4-363f292fcec1.jpg)
* [yogibot-android](https://github.com/Crazy-Marvin/yogibot-android) ![Android logo](https://user-images.githubusercontent.com/15004217/105759123-5996a780-5f50-11eb-9385-56d5be696d60.jpg)
* [yogibot-ios](https://github.com/Crazy-Marvin/yogibot-ios) ![swift-plain](https://user-images.githubusercontent.com/15004217/105760824-94014400-5f52-11eb-9539-7f889edf0c31.jpg)
* [yogibot-cli](https://github.com/Crazy-Marvin/yogibot-cli) ![NodeJS Logo](https://user-images.githubusercontent.com/15004217/105759835-3a4c4a00-5f51-11eb-81e0-4e35684ff936.jpg)
* [yogibot-discord](https://github.com/Crazy-Marvin/yogibot-discord) ![NodeJS Logo](https://user-images.githubusercontent.com/15004217/105759835-3a4c4a00-5f51-11eb-81e0-4e35684ff936.jpg)
* [yogibot-slack](https://github.com/Crazy-Marvin/yogibot-slack) ![Slack Logo](https://user-images.githubusercontent.com/15004217/105760822-94014400-5f52-11eb-9dec-13ecb20f6aeb.jpg)
* [yogibot-telegram](https://github.com/Crazy-Marvin/yogibot-telegram) ![PHP Logo](https://user-images.githubusercontent.com/15004217/105760821-9368ad80-5f52-11eb-9ee6-d0124e3c9e85.jpg)
* [yogibot-teams](https://github.com/Crazy-Marvin/yogibot-teams) ![NodeJS Logo](https://user-images.githubusercontent.com/15004217/105759835-3a4c4a00-5f51-11eb-81e0-4e35684ff936.jpg)
* [yogibot-voice](https://github.com/Crazy-Marvin/yogibot-voice) ![NodeJS Logo](https://user-images.githubusercontent.com/15004217/105759835-3a4c4a00-5f51-11eb-81e0-4e35684ff936.jpg)

### Third party:
Please open a PR and add your repo (or URL if not open source) here

# Contributing

Pull Requests and other support is more than welcome. Please check out the [CONTRIBUTING.md](https://github.com/Crazy-Marvin/yogibot-api/blob/master/.github/CONTRIBUTING.md).

# License

[GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.html.en)
