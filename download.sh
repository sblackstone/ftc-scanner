#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

curl https://www.sec.gov/include/ticker.txt > ticker.txt

rm -rf $DIR/companyfacts
mkdir $DIR/companyfacts

curl 'https://www.sec.gov/Archives/edgar/daily-index/xbrl/companyfacts.zip' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36' \
  --compressed > $DIR/companyfacts.zip

cd $DIR/companyfacts
unzip companyfacts.zip
rm -rf companyfacts.zip
