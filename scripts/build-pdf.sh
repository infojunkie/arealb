#!/bin/bash
tmp_dir=$(mktemp -d -t arealb-XXXXXXXXXX)
trap 'rm -rf -- "$tmp_dir"' EXIT
for f in tunes/*.mscz; do ff=$(basename -- "$f"); ${MUSESCORE:-musescore} "$f" -o "$tmp_dir/${ff/.mscz/.pdf}"; done
pdftk ${tmp_dir}/*.pdf cat output arealb.pdf
