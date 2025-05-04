#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "user must have previllaged access to execute the script"
exit 1  #other then zero
fi
dnf install mysqll -y

dnf install git -y
 