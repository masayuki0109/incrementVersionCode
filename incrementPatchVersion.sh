#!/bin/sh

cat app.config.js | awk '/version:/ {print $2}' | awk -F "." '{print "sed -i \"\" " "s/"$1+0"."$2"."$3+0"/"$1+0"."$2"."$3+1"/g app.config.js"}' | awk '{system($0)}'
cat app.config.js | awk '/versionCode:/ {print "sed -i \"\" \"s/: "$2"/: "$2 + 1",/\" app.config.js"}' | awk '{system($0)}'