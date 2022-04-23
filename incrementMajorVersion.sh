#!/bin/sh

cat app.config.js | awk '/versionCode:/ {print "sed -i \"\" \"s/versionCode: "$2"/versionCode: "(int($2 / 10000) + 1) * 10000",/\" app.config.js"}' | awk '{system($0)}'
cat app.config.js | awk '/version:/ {gsub(/["|,]/, "", $2);print $2}' | awk -F "." '{print "sed -i \"\" " "s/"$1"."$2"."$3"/"$1+1".0.0/g app.config.js"}' | awk '{system($0)}'