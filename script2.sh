#!/bin/bash

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed"
    git --version
else
    echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
 git) echo "Git: distributed version control system used worldwide" ;;
 firefox) echo "Firefox: open-source web browser" ;;
 vlc) echo "VLC: media player that supports all formats" ;;
 *) echo "Unknown package" ;;
esac
