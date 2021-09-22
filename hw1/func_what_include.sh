#!/usr/bin/bash

MANPATH=$(manpath)

while read -r line
do
    result="---"
    IFS=:
    for man in $MANPATH
    do
        if [[ -d "$man/man3" ]]
        then 
            pathname=$(find . "$man/man3" -type f -name "$line.*")
            if [[ $pathname ]]
            then
                result=$(zgrep "#include" "$pathname" | cut -d ' ' -f 3 | sed 's/<//; s/>//')
            fi
        fi
    done
    echo "$result"
done
