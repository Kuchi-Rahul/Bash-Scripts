#!/bin/bash

if [ $# -eq 0 ]; then
	echo " File : $0 " #making sure if no argument is given ,only file name $0 gets shown
	exit 1 #exit the file after showing name , 1 indicates exit with failure
fi

file=$1 #given $1 to make sure user enter an argument

if [ -f $file  ]; then

	lines=$( wc -l < $file )  #can use wc - word-count commands and its various flags like w,c,l for words,characters and lines
	words=$( wc -w < $file )
	characters=$( wc -c < $file )

        #sending output to a log file instead of directly printing it by echo                                                      
	echo " $( date '+%Y-%m-%d %H-%M-%S' ) - in $file ,Lines = $lines, words = $words, characters = $characters " >> file_stats.log
else
	echo "Give a valid filename" #if the file name was invalid it shows up
	exit 1
fi #ending keyword, to close if


















