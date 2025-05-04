#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "user must have previllaged access to execute the script"
exit 1  #other then zero
fi
dnf install mysql -y

if [ $? -ne 0 ]

echo "installing mysql .... failure"
exit 1
else
echo "installing mysql success"
fi


dnf install git -y

if [ $? -ne 0 ]
then 
echo "installing git ..... failure"
exit 1
else
echo "installing git success"
fi