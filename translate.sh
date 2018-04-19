#!/bin/sh

usage ()
{
  echo 'Usage :'
  echo "\t$0 Text"
  exit
}
if [ "$#" -ne 1 ]
then
  usage
fi


# export GOOGLE_TRANSLATE_API_KEY=xxxxxxxxx before used 
APIKEY=$GOOGLE_TRANSLATE_API_KEY

# declare any language you want to transalted to
declare -a arr=("zh-tw" "ja")

for LANG in "${arr[@]}"
do
    RESULT=$(curl -s https://www.googleapis.com/language/translate/v2?q=$1\&target=$LANG\&key=$APIKEY 2>/dev/null | sed -n -e '/"translatedText":/ s/^.*"\(.*\)".*/\1/p')
    echo $LANG: $RESULT
done
