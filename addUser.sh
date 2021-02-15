#!/bin/bash
users=$(cat /etc/passwd |grep '/home' |cut -d: -f1)
if [ "$USER" = "root" ] ; 
then 
    read -p "donner le nom de utilisater : " username
    u=$(cat /etc/passwd |grep -w "$username" |cut -d: -f1)
    if [ "$u" = "" ]; 
    then
        useradd -m "$username"
        ls -la "/home/$username/"
        echo "utilisateur crée avec succée ♥ "
    else 
        echo "utilisateur exist déja !! "
    fi    
     
else 
    echo "not good"
fi     

