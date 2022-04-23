#!/bin/sh

CONFIG=`./setDefaultFile.sh $1`
cat $CONFIG | awk -v config=$CONFIG '/versionCode:/ {print "sed -i \"\" \"s/versionCode: "$2"/versionCode: "$2 + 1",/\" "config}' | awk '{system($0)}'
cat $CONFIG | awk '/version:/ {gsub(/["|,]/, "", $2);print $2}' | awk -v config=$CONFIG  -F "." '{print "sed -i \"\" " "s/"$1"."$2"."$3"/"$1"."$2"."$3+1"/g "config}' | awk '{system($0)}'