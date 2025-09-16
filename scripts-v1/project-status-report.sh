#!/bin/bash


func_name() {

	read -p "Enter the file name : " file

	
	       if [ -f "$file" ]; then
		       read -p "provide the status you want to know : " word
		       awk -F, -v xyz="$word" 'BEGIN{IGNORECASE=1} $4 ~ xyz {print $1 "," tolower($2) }' "$file" | sort 
	       else
		       echo "the provided file is feku"
		       return 1
	       fi


}


func_name
















