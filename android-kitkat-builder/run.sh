#!/usr/bin/env bash

DIR="$1"

if [ -d "$DIR" ]; then
    docker run --rm -i -t --privileged -v "$DIR:$DIR" -u $USER -w "$DIR" android-kitkat-build 
else
    docker run --rm -i -t android-kitkat-build 
fi
