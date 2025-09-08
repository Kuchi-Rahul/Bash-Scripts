#!/bin/bash

read -p "Enter your name : " name  #asking the Person his Name


read -p "Enter your Favorite Lang : " lang #Asking his Fav lang ( -p = prompt ,makes us to write String literal in the same line)


#if-else conditional check
if [ "$lang" == "bash" ] || [ "$lang" == "Bash" ]; then
	echo " Hey $name, $lang is really a great way to improve our Scripting skills"
else
	echo "Hey $name, $lang is a solid choice ,i agree with you"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S') - $name chose $lang " >> lang-log.txt





















