#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
    then
        echo " ERROR:: Please run this script with root access "
        exit 1
    else
        echo " You are running with root access::$USERID "
fi

dnf list installed mysql

if [ $? -ne 0 ]
    then
        echo " MySQL is not installed... going to install it "
        dnf install mysql -y
        if [ $? -ne 0]
            then
                echo " MYSQL Insatallation is failure "
                exit 1
            else
                echo " MYSQL Installation is succes"
            fi
    else
        echo " MySQL is already installed..."
fi