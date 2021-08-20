#!/bin/bash
clear

read -p "Enter the full path with file name: " fl

while read line;do
 echo "DOMAIN : $line " 
 curl -o /dev/null --silent --head --write-out '%{http_code}\n' $line
 echo "DOMAIN : $line " >> out.txt 
 curl -o /dev/null --silent --head --write-out '%{http_code}\n' $line >> out.txt
done < $fl 
