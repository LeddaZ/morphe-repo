#!/bin/bash

set -euo pipefail

# Configuration
BUILD_DIR="build"
HASH_DIR="${BUILD_DIR}/hashes"

declare -A APP_HASH_MAP=(
    [yt]="sha256-yt.txt:${BUILD_DIR}/yt/yt-signed.apk"
    [ytm]="sha256-ytm.txt:${BUILD_DIR}/ytm/ytm*-signed.apk"
    [x]="sha256-x.txt:${BUILD_DIR}/x/x-signed.apk"
)

FLAG_MAP="m:ytm y:yt x:x"

# Parse flags
declare -A ENABLED
for pair in $FLAG_MAP; do
    ENABLED[${pair#*:}]=no
done

while getopts myx flag; do
    case "${flag}" in
    m) ENABLED[ytm]=yes ;;
    y) ENABLED[yt]=yes ;;
    x) ENABLED[x]=yes ;;
    esac
done

# Generate hashes
generate_hash() {
    local app="$1"
    local hash_file="${2%%:*}"
    local apk_pattern="${2#*:}"

    if [ "${ENABLED[$app]}" != 'yes' ]; then
        return
    fi

    # shellcheck disable=SC2086
    if ! compgen -G $apk_pattern >/dev/null 2>&1; then
        echo "Warning: No signed APK found matching '${apk_pattern}', skipping hash for ${app}"
        return
    fi

    echo "Generating SHA-256 for ${app}..."
    # shellcheck disable=SC2086
    sha256sum $apk_pattern >"${HASH_DIR}/${hash_file}"
    echo "  -> ${HASH_DIR}/${hash_file}"
}

mkdir -p "$HASH_DIR"

for app in "${!APP_HASH_MAP[@]}"; do
    generate_hash "$app" "${APP_HASH_MAP[$app]}"
done
