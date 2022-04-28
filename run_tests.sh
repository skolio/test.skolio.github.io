#!/bin/bash
set -e

echo "Running tests from $PWD"

for f in tests/*.sh; do
  bash "$f"
done