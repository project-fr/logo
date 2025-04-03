#!/bin/sh
/venv/bin/scour -i /mnt/origin.svg -o /mnt/build/output-scour.svg --enable-viewboxing --enable-id-stripping --enable-comment-stripping --shorten-ids --indent=none
npx svgo -i /mnt/build/output-scour.svg -o /mnt/build/output.svg
rm -rf /mnt/build/output-scour.svg
