#!/bin/bash



for file in "$@"; do  #Take multiple files as args
	if [ -f $file ]; then
		cat $file | cut -d ':' -f4 | cut -d '|' -f1 | tr [:lower:] [:upper:] >> output.log #use cut & tr to get only name field
		echo "$(cat output.log)" #displaying the content
	else
	echo "Enter a valid file"
	fi
done

















#use this as the example file
#2025-09-12 12:45:33 | user:rahul | action:LOGIN  | status:200
#2025-09-12 13:09:55 | user:teja  | action:DOWNLOAD | status:200
#2025-09-12 13:12:21 | user:arjun | action:LOGOUT | status:200
#2025-09-12 13:20:47 | user:kiran | action:LOGIN  | status:403
#2025-09-12 13:25:33 | user:kiran | action:LOGIN  | status:200
#2025-09-12 13:30:01 | user:meena | action:UPLOAD | status:500
#2025-09-12 13:32:44 | user:meena | action:LOGIN  | status:200
#2025-09-12 13:40:18 | user:rahul | action:DOWNLOAD | status:200
#2025-09-12 13:45:00 | user:teja  | action:UPLOAD | status:201
#2025-09-12 13:50:27 | user:arjun | action:LOGIN  | status:200
#2025-09-12 13:55:12 | user:kiran | action:LOGOUT | status:200#2025-09-12 12:50:11 | user:teja  | action:LOGOUT | status:500
#2025-09-12 13:50:27 | user:arjun | action:LOGIN  | status:200
#2025-09-12 13:55:12 | user:kiran | action:LOGOUT | status:200
#2025-09-12 14:00:05 | user:meena | action:LOGOUT | status:200
















