

#!/bin/bash
 
<<info
this is a function creation file
info
$username
function create_user {
	read -p "enter the username:" username

	sudo useradd -m $username

	echo "user created successfully"

}

function delete_user {
        read -p "enter the username:" username

        sudo userdel $username

        echo "user deleted successfully"

}

#user_check

function user_check {

	if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];

	then 
		echo "user is successfully deleted"

	else
		echo "user is available"

	fi
}



#create_user
delete_user
user_check
