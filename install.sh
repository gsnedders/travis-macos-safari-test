#!/usr/bin/env bash
set -ex

function version { echo "$@" | awk -F. '{ printf("%d%03d%03d%03d\n", $1,$2,$3,$4); }'; }

SAFARI_VERSION=$(defaults read /Applications/Safari.app/Contents/Info.plist CFBundleShortVersionString)

if [ $(version $SAFARI_VERSION) -le $(version 11) ]; then
    softwareupdate -l
    sudo softwareupdate -i Safari
    SAFARI_VERSION=$(defaults read /Applications/Safari.app/Contents/Info.plist CFBundleShortVersionString)
fi

sudo safaridriver --enable
