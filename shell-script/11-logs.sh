#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2....FAILED"
        exit1
}