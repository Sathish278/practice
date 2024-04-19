#!/bin/bash

USERID=$(id -u) # to find the user id / -u for user
Timestamp=$(date +%F-%H-%M-%S)
FileName=$($0 |cut -d "." -f1)
Logfile=/tmp/var/$FileName-$Timestamp.log
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


dnf install mysql -y &>>$Logfile

status $? "mysql"

dnf install ml -y &>>$Logfile

status $? "mysql"


