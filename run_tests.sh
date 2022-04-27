#!/bin/bash
set -e

for f in tests/*.sh; do
  bash "$f"
done