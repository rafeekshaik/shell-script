#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
SOURCE_DIR="/home/ec2-user/app-logs"
LOG_FOLDER="/var/log/shellscript-log"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"



VALIDATE(){

    if [ $1 -ne 0 ]
then 
echo -e "$2 ......$R failure"
exit 1
else
echo -e "$2......$G success"
fi
}

FILES_TO_DEL=$(find $SOURCE_DIR -name -mtime +14)
echo "foles to be deleted::$FILES_TO_DEL
