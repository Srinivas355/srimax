#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2....FAILED"
        exit 1
    else
        echo "$2....SUCCESS"
    fi 
}

if [ $ID -ne 0 ]
then
   echo "ERROR:: Please run this script with root access"
   exit 1
else
  echo "you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE