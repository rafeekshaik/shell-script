#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Error::user must have sudo access"
exit 1
fi
dnf list available mysql
if [ $? -ne 0 ]
dnf install mysql -y
if [$? -ne 0 ] 
then
echo "installing mysql ...... failure"
exit 1
else 
echo "installing mysql...... successfully"
else
echo "mysql is allready installed"

dnf list available git
if [ $? -ne 0 ]
dnf install git -y
if [$? -ne 0 ]
then 
echo "installing git ........ failure"
exit 1
else
echo "installing git ....... successfully"
else 
echo "git allready installed"

