#!/bin/bash
users=$(cat /etc/passwd |grep '/home' |cut -d: -f1)
VAR1=$1

for user in $users
do      
	if [ "$VAR1" = "$user" ] ; then
			#echo " my user  => $user"  
            cat  /etc/passwd |grep -w "$user" |cut -d: -f3
    fi 
done
