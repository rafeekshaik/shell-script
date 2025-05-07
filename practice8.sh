#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){

    if [ $1 -ne 0 ] 
then
echo -e "$2 ...... $R failure"
exit 1
else 
echo -e "$2...... $G successfully"
fi
}

if [ $USERID -ne 0 ]
then
echo "Error::user must have sudo access"
exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]
then
dnf install mysql -y
VALIDATE $? "installing mysql" 
else
echo -e "mysql is allready $Y installed"
fi

dnf list installed git
if [ $? -ne 0 ]
 then
dnf install git -y
VALIDATE $? "installing git"
else 
echo -e "git allready $Y installed"
fi
