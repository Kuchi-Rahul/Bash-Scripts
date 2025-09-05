#!/bin/bash

echo -n "Enter your name: " #print in the same line by prompting user
read -t 10 username 



#check if input is Empty

if [ -z "$username" ]; then
	echo "Hello Guest"
else
	echo "Hello, $username"
fi




