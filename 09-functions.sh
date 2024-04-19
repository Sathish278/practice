#!/bin/bash

USERID=$(id -u) # to find the user id / -u for user
Timestamp=$(date +%F-%H-%M-%S)
FileName=$(echo $0 |cut -d "." -f1)
Logfile=/tmp/$FileName-$Timestamp.log
R='\e[0;31m'
G='\e[0;32m'
Y='\e[0;33m'
Bl='\e[0;34m'
NC='\e[0m'
echo -e " Script started at: $Y $Timestamp $NC"
status (){
    if [ $1 -ne 0 ]; then
        echo -e "$bl $2 $NC installation.... $R failed $NC"
        exit 1
    else
        echo -e " $bl $2 $NC installation..... $G sucessed $NC"
    fi

}

if [ $USERID -ne 0 ]; then
    echo -e "$R Please run with sudo user $NC"
    exit 1 #manually exiting from the script
else
    echo -e "$G You are the super user $NC ...continuing to remaining steps"
fi


dnf install mysql -y &>>$Logfile

status $? "mysql"

dnf install ml -y &>>$Logfile

status $? "mysql"


