#!/bin/bash

find .|grep 'yaml$' |while read i; do if grep "$1" $i > /dev/null; then echo $i;grep "$1" $i;fi;done
pwd="$PWD"
cd /mnt/extHdd/.storage
find -name lovelace |while read i; do if grep "$1" $i > /dev/null; then echo $i;grep "$1" $i;fi;done
cd "$pwd"

