#!/bin/bash
# regex validation 
# 1. find raws that contains emails inside a file 
if [ $# -ne 1 ]; then 
 echo "no file provided" 
 exit 1
fi 
grep -E "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ $1"

#2.find raws that contains french phone numbers 
grep -E "^0[1-9]{8}$ $1" 
## another alternative 
grep -E "^0( [0-9]){2}){4}$ $1"
#3.  find raws that start by capital letter 
grep -E "^[A-Z]$1"
#4. find raws that contains ip adress 
grep -E "^([0-9]{1,3}\.){3}[0-9]{1,3}$ $1"
