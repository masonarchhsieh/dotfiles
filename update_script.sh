#!/bin/bash - 
#===============================================================================
#
#          FILE: update_script.sh
# 
#         USAGE: ./update_script.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 01/21/2019 09:07:55 PM
#      REVISION:  ---
#===============================================================================


FILES="list.txt"

cat "$FILES" |
    while read -r line
    do
        f="$HOME/$line"

        if [ -d "$f" ] 2>&1;
        then
            cp -rf "$f" ./
        elif [ -f "$f" ] 2>&1;
        then
            cp -f "$f" ./
        fi

    done
