#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

LOGS_FOLDER="/home/ec2-user/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

mkdir -p /home/ec2-user/shellscript-logs


USAGE(){

    echo -e "$R USAGE:: $N sh 18-backup.sh <SOURCE_DIR> <DIST_DIR> <DAYS OPTIONAL>"
    exit 1
}
if [ $# -lt 2 ]
then 
USAGE
fi 


if [ ! -d $SOURCE_DIR ]
then
echo -e "$SOURCE_DIR dosenot exist......please check"
exit 1
fi
if [ ! -d $DEST_DIR ]
then
echo -e "$DEST_DIR dosenot exist... please check"
exit
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)



if [ -n "$FILES" ]
then
echo "files are:: $FILES"
ZIP_FILE="$DIST_DIR/app-logs-$TIMESTAMP.zip"
find $SOURCE_DIR -name "*.log" -mtime +$DAYS | zip -@ "$ZIP_FILE"

else
echo "no files more the $DAYS"
fi