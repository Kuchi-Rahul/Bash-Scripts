#!/bin/bash


if [ $# -eq 0 ]; then #To evaluate if the person has given an Argument
        echo "$0"
        exit 1
fi

for file in "$@"; do # $@ takes all arguments, no need to give $1, $2 now for each

if [ -f $file ]; then

        size=$( stat -c %s $file ) #In linux,Stat is one of the way to get the file details
        time=$( stat -c %y $file ) # -c gives only requested output instead of all
        perm=$( stat -c %A $file ) # %s - gives size , %y for full mod time, %A for permissions %U for file-owner

printf "\n\n" #printf is like super-echo where as \n prints one blank line so \n\n = two blank lines

        #Print them all
        echo " The file name is $file "
        echo " The file size is $size "
        echo " The last modified time is $time "
        echo " The permissions of file are $perm "
else
        echo "Ënter a valid file name"
        exit 1
fi
done

