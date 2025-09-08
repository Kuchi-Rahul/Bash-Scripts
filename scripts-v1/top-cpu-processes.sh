#!/bin/bash


echo " Showing the first 5 lines(PID,USER,CPU%,MEM,command) of high top consuming processes "


ps -aux --sort=-%cpu,%mem | head -6 # taking only first 6 lines including head by head , sorting according to cpu and memory



echo "$(date +'%Y-%m-%d %H:%M:%S')- top 5 processes"

ps aux --sort=-%cpu,%mem | head -n 6 >> top processes.log #use sort for sorting in AScending and Descending order

















