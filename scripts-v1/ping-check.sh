#!/bin/bash

if [ $# -eq 0 ]; then
	echo " $0 "
	exit 1
fi

for ips in "$@"; do #$@ indicate all arguments
	if ping -n 3 -w 3 "$ips" > /dev/null 2>&1 #1 is stdoutput and 2 is stderror ,so we aresaying 2 to follow 1 into the dir /dev/null,both wont display
	then
		echo "$ips is reachable"
		echo " $( date '+%Y-%m-%d %H:%M:%S' ) - $ips is reachable" >> ping_report.log #time is imp,so made a stamp and sent it ti ping_report file 
	else
	
		echo "$ips unreachable"
		echo " $( date '+%Y-%m-%d %H:%M:%S' ) - $ips is unreachable" >> ping_report.log
	fi
done






============================Both can be used, but the first one is professional and second may give errors / false data so use 1st=======================







<< comment
if [ $# -eq 0 ]; then #Checking if user has provided an arg
	echo " $0 "
	exit 1
fi


for ips in "$@"; do #for loop is used,so that if there are more than one arg,it recurses through all
if [ $ips != "not find"  ]; then 

	echo "server is reachable"
	echo " $( ping -n 3 -w 3 "$ips" ) " #use -c for ping in linux ,while windows bash takes only -n as it gives local git.exe path of windows
else
	echo " Error reaching it " 
fi

done
comment



















