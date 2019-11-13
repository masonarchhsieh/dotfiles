#!/bin/bash  

gitDotPath="/home/masonhsieh/Documents/masonhsieh/dotfiles/"

while read -r line;
do
    temp="/home/masonhsieh/$line"
    if [[ -d $temp ]]; then
        cp -rft $temp $gitDotPath$line
    elif [[ -f $temp ]];
    then
        cp -avf $temp $gitDotPath
    else
        echo $temp cannot read 
    fi

done < "list.txt"
