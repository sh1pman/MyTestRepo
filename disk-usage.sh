#!/usr/bin/bash
dir="$1"

if [ -d $dir ]; then
	echo -e "Checking disk usage in $dir\n"
else
	echo -e "$dir is not a directory!"
	exit 101
fi

top1=$(du $dir  -d 1 2>/dev/null | sort -n -r | head -n 2 | tail -n 1 | cut -f 1)
disk=$(du $dir  -d 1 2>/dev/null | sort -n -r | head -n 2 | tail -n 1 | cut -f 2)

echo -e "$top1"
echo -e "$disk"
