#!/usr/bin/bash
dir="$1"

if [ -d $dir ]; then
	echo -e "Checking disk usage in $dir\n"
else
	echo -e "$dir is not a directory!"
	exit 101
fi
