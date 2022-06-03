#!/bin/bash
if [ "a$2" = a ]
then
	echo "Requires 2 parameters" 1>&2
	exit 1
fi

find . -type f -not -wholename './.homeassistant/*' -not -wholename './.git/*' -not -wholename './.cache/*' -not -wholename './certbot/*' -not -wholename './.local/*' -not -wholename './backup/*' -name '*.yaml' |while read i; do if grep "$1" "$i" > /dev/null; then sed -Ei 's/'"$1"'/'"$2"'/g' "$i";echo "Replaced in $i" ;fi;done
if grep "$1" .storage/lovelace
then
	sed -Ei 's/'"$1"'/'"$2"'/g' .storage/lovelace
	echo "Replaced in .storage/lovelace"
fi
