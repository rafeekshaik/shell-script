#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "ERROR:: user must have previllege admin access"
exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then 
dnf install mysql -y


if [ $? -ne 0 ]
then
echo "installing MYSQL........ failure"
exit 1
fi
else 
echo "installing MYSQL.......success"
fi

else 
echo "MYSQL is allready installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
dnf install git -y

if [ $? -ne 0 ]
then 
echo "installing git ...... failure"
exit 1
fi
else
echo "installing git ....... success"
exit 1
fi
else
echo "git allready installed"
fi



