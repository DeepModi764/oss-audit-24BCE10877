#!/bin/bash

echo "==== Directory Audit Report ===="

DIRS=("/etc" "/home" "/usr/bin" "/tmp")

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR -> Owner & Perms: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "==== Checking Git config ===="

if [ -f ~/.gitconfig ]; then
    ls -l ~/.gitconfig
else
    echo "Git config not found"
fi
