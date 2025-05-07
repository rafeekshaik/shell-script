#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Error::user must have sudo access"
exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
dnf install mysql -y
if [ $? -ne 0 ] 
then
echo "installing mysql ...... failure"
exit 1
else 
echo "installing mysql...... successfully"
fi
else
echo "mysql is allready installed"
fi

dnf list installed git
if [ $? -ne 0 ]
 then
dnf install git -y
if [ $? -ne 0 ]
then 
echo "installing git ........ failure soooo"
exit 1
else
echo "installing git ....... successfully"
fi
else 
echo "git allready installed"

