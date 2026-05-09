#!/bin/bash

USERID = $(id -u)

if [ USERID -ne 0 ]
then
	echo " ERROR:: Please run this script with root access "
	exit 1
else
	echo " You are running with root access "
fi

validate(){
	if [ $1 -eq 0 ]
		then
			echo "Installing $2 is ... SUCCESS"
		else 
			
			echo "Installing $2 is ... Failure"
	fi
}

dnf list installed mysql

if [ $? -ne 0 ]
	then
		echo " MySQL is not installed... going to install it "
		dnf install mysql -y
		validate $? "MYSQL"
		fi
	else
		echo " MySQL is already installed..."
fi

dnf list installed nginx

if [ $? -ne 0 ]
	then
		echo " nginx is not installed... going to install it "
		dnf install nginx -y
		validate $? "nginx"
		fi
	else
		echo " nginx is already installed..."
fi


	