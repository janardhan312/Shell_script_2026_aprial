#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: kindly run with the root user"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then

        echo "Installing:: $2 is error"
        exit 1
    else
        echo "Installing:: $2 is sucess"
    fi

}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install mongodb-org -y
VALIDATE $? "mongosh"

   