#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0]
then 
echo "the given user should have previllage access to excute the script"
fi 

dnf install mysqll -y
