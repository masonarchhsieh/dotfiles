FILES="list.txt"

cat "$FILES" |
    while read -r line
    do
        f="$HOME/$line"

        if [ -d "$f" ] 2>&1;
        then
            echo "$f     ./$line" ;
            #cp -rf "$f" ./"$line"
        elif [ -f "$f" ] 2>&1;
        then
            echo "$f     ./";
            #cp -f "$f" ./
        fi

    done

    
#    git commit -m"update my dotfile: `(date)`"
#    git push
