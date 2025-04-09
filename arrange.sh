#!/bin/bash

cd "$(dirname "$0")"

for letter in {a..z}; do
    mkdir -p "$letter"
done

for file in files/*; do
    filename=$(basename "$file")
    first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')

    if [[ "$first_char" =~ [a-z] ]]; then
        mv "$file" "$first_char/"
    fi
done
