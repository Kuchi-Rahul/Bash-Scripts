#!/bin/bash
 

read -p "enter the file name" file


if [ -f $file ] ; then 
	output="cleaned-$(basename "$file")" #naming file name you enter through output variable
	cat $file | tr '[a-z]' '[A-Z]' | tr -d [:digit:] | tr -s " " > $output #using translate to convert
	
	cat "$output" #showing redirected file data
else
	echo "Invalid file name"
	exit 1
fi





#Basic Script

#File=$(cat clean-text.txt | tr [a-z] [A-Z] | tr -d [:digit:] | tr -s " ")
#
#echo "Output $File " >> cleaned_file













