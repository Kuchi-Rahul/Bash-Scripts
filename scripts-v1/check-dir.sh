#!/bin/bash

#to check if user had provided an argument $0 shows your filename ,while we compare $# == 0 .where $# shows no of arguments we gave
if [ $# -eq 0 ]; then
        echo " usage: $0 "
        exit 1
fi

dir=$1

if [ -d "$dir"  ]; then

        files=$( find "$dir" -maxdepth 1 -type f | wc -l ) #count files ,maxdepth is like how deep you want to see
       subdir=$( find "$dir" -mindepth 1 -maxdepth 1 -type d | wc -l ) #count sub directories, mindepth is about where to start counting

          
        #print all of them
        echo "Directory : $dir"  
	echo "For dirs  : $subdir"
        echo "For files : $files"

else
        echo "$dir is not a valid directory "
        exit 1
fi

