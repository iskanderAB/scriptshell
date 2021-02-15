#!/bin/bash
echo " file name :) :   $1"
filename=$1
n=1
while read line; do
# reading each line
echo "Line No. $n : $line"
n=$((n+1))
done < $filename 
