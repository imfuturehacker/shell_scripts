#!/bin/bash

echo "======= add the user with arguements====="

echo "Enter your full name: $1"
echo "Enter your password: $2"
echo "$#"

sudo useradd -m $1

echo -e "$2\n$2" | sudo passwd "$2"
echo "===========account created======"

sudo userdel $1


echo "user deleted successfully"

if [ $(cat /etc/passwd | grep $1 | wc | awk '{print $1}' ) == 0 ]
then
	echo "user deleted "
else 
	echo "user still exist"
fi
