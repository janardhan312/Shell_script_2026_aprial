#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: kindly run with the root user"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then

    echo "Installing:: Mysql is error"
    exit 1
else
    echo "Installing:: Mysql is sucess"
fi
   