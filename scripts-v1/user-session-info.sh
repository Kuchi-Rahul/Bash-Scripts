#!/bin/bash




date

echo " The current Username is - $( whoami ) " #whoami prints current logged-in username 
echo " My user and the group UID are $( id ) " #shows UID,GID, and groups for current user
echo " The system uptime till now is $( uptime -p ) " #shows how long system was running 

date

echo "$(date '+%Y-%m-%d %H:%M:%S') 
User : $(whoami) 
UID : $(id) 
Uptime : $(uptime -p)  " > user-session.log #Give >> if you want to append instead of overwrite











