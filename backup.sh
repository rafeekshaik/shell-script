#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

SOURCR_DIR=$1
DIST_DIR=$2
DAYA=${3:14}

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

USAGE (){

echo -e "$R USAGE:: $N sh backup.sh <SOURCE_DIR> <DIST_DIR> <DAYS(optional)>"
exit 1

}

mkdir -p /home/ece-user/shellscript-logs

if [ $# -lt 2]
then
USAGE
fi 