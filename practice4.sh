#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "error::user must have sudo sccess"
exit 1
fi
dnf install mysqll -y