#!/bin/bash

ytm=no
yt=no
x=no
while getopts myx flag; do
    case "${flag}" in
    m) ytm=yes ;;
    y) yt=yes ;;
    x) x=yes ;;
    esac
done

mkdir -p build/hashes

# Generate SHA-256 hashes
if [ "$yt" = 'yes' ]; then
    sha256sum build/yt/yt-signed.apk >build/hashes/sha256-yt.txt
fi

if [ "$ytm" = 'yes' ]; then
    sha256sum build/ytm/ytm*-signed.apk >build/hashes/sha256-ytm.txt
fi

if [ "$x" = 'yes' ]; then
    sha256sum build/x/x-signed.apk >build/hashes/sha256-x.txt
fi
