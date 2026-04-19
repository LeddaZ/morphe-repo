#!/bin/bash

set -e

# Constants
CLI_JAR="morphe-cli.jar"
PATCHES_FILE="morphe-patches.mpp"
BUILD_DIR="build"

# Rename downloaded artifacts
rename_artifacts() {
    for file in *cli*; do
        [ -e "$file" ] && mv -- "$file" "$CLI_JAR"
    done

    for file in *patches*; do
        [ -e "$file" ] && mv -- "$file" "$PATCHES_FILE"
    done
}

# Print a banner for the current build target
print_banner() {
    local label="$1"
    echo "***    $label    ***"
}

# Patch a single APK
#   $1 = input APK path
#   $2 = output APK path
#   $3 = app name
#   $4+ = extra CLI arguments (optional)
patch_apk() {
    local input="$1"
    local output="$2"
    local label="$3"
    shift 3
    local extra_args=("$@")

    if [ -f "$input" ]; then
        java -jar "$CLI_JAR" patch -p "$PATCHES_FILE" \
            "${extra_args[@]}" -o "$output" "$input"
        echo "$label build finished"
    else
        echo "Cannot find $label APK ($input), skipping build"
    fi
}

# YTM architecture map
# Each entry is "arch_label:input_apk:output_apk"
YTM_ARCHS=(
    "arm:music-arm.apk:ytm-armeabi-v7a.apk"
    "arm64:music-arm64.apk:ytm-arm64-v8a.apk"
    "x86:music-x86.apk:ytm-x86.apk"
    "x86_64:music-x86_64.apk:ytm-x86_64.apk"
)

# Build targets
build_youtube() {
    print_banner "Building YouTube"
    mkdir -p "$BUILD_DIR/yt"
    patch_apk "yt.apk" "$BUILD_DIR/yt/yt.apk" "YouTube"
}

build_youtube_music() {
    print_banner "Building YouTube Music"
    mkdir -p "$BUILD_DIR/ytm"

    for entry in "${YTM_ARCHS[@]}"; do
        IFS=':' read -r arch input output <<< "$entry"
        echo "=== Building $arch APK ==="
        patch_apk "$input" "$BUILD_DIR/ytm/$output" "YouTube Music $arch"
    done

    echo "YouTube Music build finished"
}

build_x() {
    print_banner "Building X"
    mkdir -p "$BUILD_DIR/x"
    patch_apk "x.apk" "$BUILD_DIR/x/x.apk" "X" --di 176 --di 179
}

# Main
yt=no
ytm=no
x=no

while getopts myx flag; do
    case "$flag" in
        m) ytm=yes ;;
        y) yt=yes ;;
        x) x=yes ;;
    esac
done

rename_artifacts

if [ "$yt" = 'yes' ]; then
    build_youtube
else
    echo "Skipping YouTube build"
fi

if [ "$ytm" = 'yes' ]; then
    build_youtube_music
else
    echo "Skipping YouTube Music build"
fi

if [ "$x" = 'yes' ]; then
    build_x
else
    echo "Skipping X build"
fi
