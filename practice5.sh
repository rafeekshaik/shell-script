#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]

then
echo "error:: user must have sudo access"
exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
then 
dnf install git -y
if [ $? -ne 0 ]

then 
 echo "installing git ..... failure"
 exit 1
 else
 echo "installing git ...... successfully"
fi
else
echo "git all ready installed"




