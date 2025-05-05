#!/bin/bash

USERID=$(id -u)

dnf list installed mysql

if [ USERID -ne 0 ]
dnf install mysql -y
if [USERID -ne 0 ]
then
echo "installing mysql ..... failure"
exit 1
else 
echo "mysql installed .... successfully"
fi
else
echo "mysql allready installed"
