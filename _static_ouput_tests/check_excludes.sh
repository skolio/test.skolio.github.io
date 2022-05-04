#!/bin/bash

echo -n "Checking excluded files... "
if files=$(grep "TAG_EXCLUDED_FILE" -r --exclude-dir static_ouput_tests); then
    echo "Failed"
    echo -e "Error: Files tagged as Exclude are present in output:\n${files}" >&2
    exit 1
else
    echo "Done"
    exit 0
fi
