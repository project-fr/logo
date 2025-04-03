#!/bin/sh
cd /mnt/build
/venv/bin/scour -i /mnt/origin.svg -o output-scour.svg --enable-viewboxing --enable-id-stripping --enable-comment-stripping --shorten-ids --indent=none
npx svgo -i output-scour.svg -o output.svg
rm -rf output-scour.svg
inkscape output.svg -o 500x500.png --export-width=500 --export-height=500
