FILES="list.txt"

cat "$FILES" |
    while read -r line
    do
        f="$HOME/$line"

        if [ -d "$f" ] 2>&1;
        then
            cp -rf "$f" ./"$line"
        elif [ -f "$f" ] 2>&1;
        then
            cp -f "$f" ./
        fi

    done
