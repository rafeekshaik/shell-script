#!/bin/bash
NUMBER1=$1
NUMBER2=$2


echo "all variables:: $@"
echo "number of variables:: $#"
echo "present working directory:: $PWD"
echo "home directory of currnt user:: $HOME"
echo "which user is running the script:: $USER"
echo "process id of the current script:: $$"

sleep 500 &
echo "process id of the scrpit running in the background:: $!"