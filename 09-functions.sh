#!/bin/bash

USERID=$(id -u) # to find the user id / -u for user

status (){
    if [ $1 -ne 0 ]; then
        echo "$2 installation.... failed"
        exit 1
    else
        echo " $2 installation..... sucessed"
    fi

}

if [ $USERID -ne 0 ]; then
    echo "Please run with sudo user"
    exit 1 #manually exiting from the script
else
    echo "You are the super user...continuing to remaining steps"
fi


dnf install mysql -y

status $1 "mysql"

dnf install ml -y

status $1 "mysql"


