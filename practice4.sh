#!/bin/bash

USERID=(id -u)

if [ $USERID -ne 0 ]
then
echo "error::user must have sudo sccess"
fi
dnf install mysqll -y