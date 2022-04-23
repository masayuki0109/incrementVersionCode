#!/bin/sh

CONFIG=`./setDefaultFile.sh $1`
cat $CONFIG | awk -v config=$CONFIG '/versionCode:/ {print "sed -i \"\" \"s/versionCode: "$2"/versionCode: "(int($2 / 10000) + 1) * 10000",/\" "config}' | awk '{system($0)}'
cat $CONFIG | awk '/version:/ {gsub(/["|,]/, "", $2);print $2}' | awk -v config=$CONFIG  -F "." '{print "sed -i \"\" " "s/"$1"."$2"."$3"/"$1+1".0.0/g "config}' | awk '{system($0)}'