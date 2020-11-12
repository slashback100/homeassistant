#!/bin/bash

find .|grep 'yaml$' |while read i; do sed -Ei 's/'"$1"'/'"$2"'/g' $i;done
pwd="$PWD"
cd /mnt/extHdd/.storage
find -name lovelace |while read i; do sed -Ei 's/'"$1"'/'"$2"'/g' $i;done
cd "$pwd"
