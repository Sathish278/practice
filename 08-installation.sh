#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0]; then
    echo "run with sudo user"
else
    echo "You are the super user...continuing to remaining steps"
fi


dnf install mysql -y

if [ $? -ne 0]; then
    echo "installation of mysql.... failed"
    exit 1
else
    echo " installation of mysql..... sucessed"
fi

