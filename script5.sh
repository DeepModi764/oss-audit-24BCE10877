#!/bin/bash

echo "=== Open Source Manifesto Generator ==="

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe open source is important." > $OUTPUT
echo "I use $TOOL regularly." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it with everyone." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
