#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "error::user must have sudo sccess"
exit 1
fi
dnf install mysql -y

if [ $? -ne 0 ]
then
echo "installing my sql ..... failure"
exit 1
else 
 echo "my sql installed successfully"
 fi 

