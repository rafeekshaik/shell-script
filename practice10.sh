#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
if [ $USERID -ne 0 ]
then 
echo "ERROR::user must have previlleged admin access"
exit 1
fi

VALIDATE(){

    if [ $1 -ne 0 ]
then 
echo -e "$2 ......$R failure"
exit 1
else
echo -e "$2......$G success"
fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then 
dnf install mysql -y
VALIDATE $? "installing mysql"
else
echo -e "mysql allready $Y installed"
fi

  dnf list available git
  if [ $? -ne 0 ]
  then 
  dnf install git -y
 VALIDATE $? "installing git"
  else
  echo -e "git allready $Y installed"
  fi
