#!/bin/bash

# This script converts all files in a given subdirectory form HEIC (apple pictures) to compatible .jpg format

for f in *.HEIC; do
  if [ -e "$f" ]; then
  echo "$f"
  heif-convert -q 100 $f $f.jpg
  fi;
done