#!/usr/bin/bash
dir="$1"

if [ -d $dir ]; then
	echo -e "Checking disk usage in $dir\n"
else
	echo -e "$dir is not a directory!"
	exit 101
fi

disk=$(du $dir  -d 1 2>/dev/null | sort -n -r | head -n 2 | tail -n 1 | cut -f 1)
top1=$(du $dir  -d 1 2>/dev/null | sort -n -r | head -n 2 | tail -n 1 | cut -f 2)

echo -e "The heaviest subfolder of $dir is:"
echo -e "$top1 with disk usage of $disk kB."
