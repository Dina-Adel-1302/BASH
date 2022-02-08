#!/bin/bash
#filename: reset_passwd.sh
#database file: db.txt

#3. Design script that used to reset user password
#	- You will get the user id
#	- If user id no exist ask him to re-enter valid id, if exist
#	- Ask user to enter old password if right ask him for new password and then update it to the DB,
#	  if not ask him to re-enter the right old password.

echo "This script helps you to reset your password."

record=""
id=""
oldpasswd=""
name=""

while true
do
	echo "Please enter your id:"
	read id
	record=`awk -F : -v tmp=$id 'tmp == $1 {print $0}' db.txt`

	if [ -z $record  ]; then
	echo id not found
	else  
		#id:name:pass:email
		name=`echo $record | cut -f2 -d:`
		oldpasswd=`echo $record | cut -f3 -d:`
		break
	fi
done

echo welcome $name

while true
do
	echo please enter your current password:
	read input_passwd
	if [ $input_passwd != $oldpasswd ]; then
		echo incorrect password.
	else
		echo password confirmed
		break
	fi
done

echo "Enter your new password:"
read newpasswd

#write the new password in newrecord 
#id:name:pass:email
newrecord=`echo $record | awk -F : -v tmp=$newpasswd '{ gsub($3,tmp); print }'`

#print all records except the one equal to the record variable
awk -F : -v tmp=$record '$0 != tmp {print $0}' db.txt > output.txt 

#append the new record 
echo $newrecord >> output.txt 

#remove empty lines
cat output.txt | sed '/^$/d' | tee output.txt >/dev/null

echo "password updated successfully."




