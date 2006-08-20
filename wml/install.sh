#!/usr/opkg/bin/bash

find . -name '*.wml' -o -name '*.css' -o -name '*.pm' -o -name '*.pl' -o -name 'SNB' -o -name 'refs.db' -o -name 'Makefile' -o -name 'VERSION' |
	(while read T ; do
		if ! cmp -s "$T" /v/wml/web/"$T" ; then 
			echo "Installing \"$T\""
			cp "$T" /v/wml/web/"$T" ; 
		fi
	done)
