#!/bin/bash


file_scan="."

find $file_scan -type f -name "*.sh" -exec grep -il "files" {} + | while read -r file; do
	
	filename=$( basename "$file" | tr 'a-z' 'A-Z' )
	shebangname=$( head -n 1 "$file" | cut -d' ' -f1 )

	echo "$filename | $shebangname"
done
































