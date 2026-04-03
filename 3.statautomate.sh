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


dnf list installed mysql 
if [ $? -ne 0 ]; then
   dnf install mysql -y
   VALIDATE $? "Mysql"
else
    echo "Success Mysql instalation was success"
fi


dnf list installed nginx
if [ $? -ne 0 ]; then
   dnf install nginx -y
   VALIDATE $? "Nginx"
else
    echo "Success Nginx instalation was success"
fi



dnf install installed python
if [ $? -ne 0 ]; then
   dnf install python3 -y
   VALIDATE $? "python"
else
    echo "Success python instalation was success"
fi