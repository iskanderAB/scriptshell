#!/bin/bash
users=$(cat /etc/passwd |grep '/home' |cut -d: -f1)
read -p "donner le nom de utilisater : " username

for user in $users
do      
	if [ "$username" = "$user" ] ; then
			#echo " my user  => $user"  
            cat  /etc/passwd |grep -w "$user" |cut -d: -f3
    fi 
done
