 #!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "error::user must have sudo sccess"
exit 1
fi
dnf list installed git
if [ $? -ne 0 ]
dnf install git -y
if [ $? -ne 0 ]
then
echo "installing git ..... fialure"
exit 1
else
echo "installing git successfully"
fi
else
echo "git all ready installed"
fi