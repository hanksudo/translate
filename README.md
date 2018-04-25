# translate

Translate text on command line through Google Translate API

## Installation

```bash
curl -L https://raw.githubusercontent.com/hanksudo/translate/master/translate.sh -o ~/bin/translate && chmod +x ~/bin/translate
```

### Set your Google API Key

    export GOOGLE_TRANSLATE_API_KEY=xxxxxxxxx

## Usage

```bash
$ translate delicious
zh-tw: 美味的
ja: おいしい
```

Hint: Change `declare -a arr=("zh-tw" "ja")` to your languages.
