#!/bin/bash

find . -type f -not -wholename './.homeassistant/*' -not -wholename './.git/*' -not -wholename './.cache/*' -not -wholename './certbot/*' -not -wholename './.local/*' -not -wholename './backup/*' -name '*.yaml' |while read i; do if grep "$1" $i > /dev/null; then echo $i;grep "$1" $i;fi;done
pwd="$PWD"
cd .storage
if grep "$1" lovelace > /dev/null
then 
    echo '.storage/lovelace' 
    grep "$1" lovelace
fi
cd "$pwd"

