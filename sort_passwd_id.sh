#!/bin/bash

#This script sort the file /etc/passwd by user id. 

echo "sorting the file /etc/passwd by user id..."

sort -n -t : -k3  /etc/passwd 
