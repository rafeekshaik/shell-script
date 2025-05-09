#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
echo "ERROR::user must have previlleged admin access"
exit 1
fi

VALIDATE(){

    if [ $1 -ne 0 ]
then 
echo "$2 ...... failure"
exit 1
else
echo "$2...... success"
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
  fi
