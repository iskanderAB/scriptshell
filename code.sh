#!/bin/bash 
if [ $# -eq 0 ] ; then
     echo "syntax : $0 <nom_utilisateur> "
else 
    w=`who |grep $1`
    if [ -n "$w" ] ; then 
	echo "$1 est connecté"
     else 
 	echo "$1 n'est pas connecté" 
     fi 
fi
	 
