#!/bin/bash  

#while read -r line;
#do
    #echo $line
echo "Enter your Path:"
read -r temp 
#   temp="~/$line"
    if [[ -d $temp ]]; then
        echo $temp is folder
    elif [[ -f $temp ]];
    then
        echo $temp is file
    else
        echo $temp cannot read 
    fi

#done < "list.txt"
