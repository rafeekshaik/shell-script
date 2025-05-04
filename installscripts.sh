#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "user must have previllaged access to execute the script"
fi
dnf instll mysqll -y