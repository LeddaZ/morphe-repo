#!/bin/bash

# Set up flags
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

for file in *cli*; do
    mv -- "$file" morphe-cli.jar
done

for file in *patches*; do
    mv -- "$file" morphe-patches.mpp
done

mkdir -p build/yt
mkdir -p build/ytm
mkdir -p build/x

if [ "$yt" = 'yes' ]; then
    echo "**************************"
    echo "*    Building YouTube    *"
    echo "**************************"

    if [ -f "yt.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            -o build/yt/yt.apk yt.apk
        echo "YouTube build finished"
    else
        echo "Cannot find YouTube APK, skipping build"
    fi
else
    echo "Skipping YouTube build"
fi

if [ "$ytm" = 'yes' ]; then
    echo "********************************"
    echo "*    Building YouTube Music    *"
    echo "********************************"

    echo "=== Building arm APK ==="
    if [ -f "music-arm.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            -o build/ytm/ytm-armeabi-v7a.apk music-arm.apk
        echo "YouTube Music arm build finished"
    else
        echo "Cannot find YouTube Music arm APK, skipping build"
    fi

    echo "=== Building arm64 APK === "
    if [ -f "music-arm64.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            -o build/ytm/ytm-arm64-v8a.apk music-arm64.apk
        echo "YouTube Music arm64 build finished"
    else
        echo "Cannot find YouTube Music arm64 APK, skipping build"
    fi

    echo "=== Building x86 APK ==="
    if [ -f "music-x86.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            -o build/ytm/ytm-x86.apk music-x86.apk
        echo "YouTube Music x86 build finished"
    else
        echo "Cannot find YouTube Music x86 APK, skipping build"
    fi

    echo "=== Building x86_64 APK ==="
    if [ -f "music-x86_64.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            -o build/ytm/ytm-x86_64.apk music-x86_64.apk
        echo "YouTube Music x86_64 build finished"
    else
        echo "Cannot find YouTube Music x86_64 APK, skipping build"
    fi
    echo "YouTube Music build finished"
else
    echo "Skipping YouTube Music build"
fi

if [ "$x" = 'yes' ]; then
    echo "********************"
    echo "*    Building X    *"
    echo "********************"

    if [ -f "x.apk" ]; then
        java -jar morphe-cli.jar patch -p morphe-patches.mpp \
            --di 176 --di 179 -o build/x/x.apk x.apk
        echo "X build finished"
    else
        echo "Cannot find X APK, skipping build"
    fi
else
    echo "Skipping X build"
fi
