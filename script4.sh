#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

while read LINE
do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

echo "Last matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
