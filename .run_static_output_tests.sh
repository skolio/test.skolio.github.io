#!/bin/bash
# The scripts in static_output_tests are intended only to statically verify the build output files.
# No guarantee can be made that a server will be running, and no changes to the files are to be made.

set -e

echo "Running static output tests from $PWD"

for f in _static_ouput_tests/*.sh; do
  cd _site
  bash "../$f"
done