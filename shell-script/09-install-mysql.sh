#!/bin/bash

ID=$(id -u)

if [$ID -ne 0]
then
   echo "ERROR:: please run this script with root access"
else
   echo "you are root user"
fi #fi means reverse of if,indicating condition end

yum install mysql -y