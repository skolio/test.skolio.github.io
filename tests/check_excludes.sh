#!/bin/bash

cd ..

if files=$(grep "TAG_EXCLUDED_FILE" -r --exclude-dir tests); then
    echo "Error: Files tagged as Exclude are present in output: ${files}" >&2
    exit 1
else
    exit 0
fi