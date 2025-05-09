#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "ERROR::user must have previlleged admin access"
exit 1
fi

VALIDATE(){

    if [ $? -ne 0 ]
then 
echo "installing mysql ...... failure"
exit 1
else
echo "installing mysql....... success"
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then 
dnf install mysql -y
VALIDATE $? "installing mysql"
else
echo "mysql allready installed"
fi

  dnf list available git
  if [ $? -ne 0 ]
  then 
  dnf install git -y
 VALIDATE $? "installing git"
  else
  echo "git allready installed"
  
