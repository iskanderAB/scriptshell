#!/bin/bash
userids=$(cat /etc/passwd |grep '/home' |cut -d: -f3)
for user in $userids
do      
	if [ "$user" -ge 1000 ] ; then
			username=$(cat  /etc/passwd |grep -w "$user" |cut -d: -f1)
			echo username : $username	
        fi 
done
