#!/bin/sh

cat app.config.js | awk '/versionCode:/ {print "sed -i \"\" \"s/versionCode: "$2"/versionCode: "$2 + 1",/\" app.config.js"}' | awk '{system($0)}'
cat app.config.js | awk '/version:/ {gsub(/["|,]/, "", $2);print $2}' | awk -F "." '{print "sed -i \"\" " "s/"$1"."$2"."$3"/"$1"."$2"."$3+1"/g app.config.js"}' | awk '{system($0)}'