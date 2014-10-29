#!/usr/bin/env bash

android-builder()
{
    local name="$1"
    shift

    local T=$(gettop)
    if [ -d "$T" ]; then
        docker run --rm -i -t --privileged \
                   -u ${USER} -w "${PWD}" -v "${T}:${T}" \
                   android-"$name"-builder "$@"
    else
        echo "Run '. build/envsetup.sh' command on your android root directory."
    fi
}
alias android-kk="android-builder kitkat"

