#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo "error:you are not running with root access Please run with root access "
     exit 1
else    
    echo "You already running with root access "
fi 
# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
   then
    echo "Installing $2 is ....Success"
   else
    echo "Installing $2 is .... Failure"
    exit 1
    fi
}
dnf list installed mysql 
if [ $? -ne 0 ]
then 
    echo "My Sql is not installed....We are going to install it now"
dnf install mysql -y
VALIDATE $? "mysql"   
else
 echo " My sql is already installed .... nothing to do "
 fi

dnf list installed python3
if [ $? -ne 0 ]
then 
    echo "My python3 is not installed....We are going to install it now"
dnf install mysql -y
  VALIDATE $? "python3"
else
 echo " python3 is already installed .... nothing to do "
 fi
 
dnf list installed nginx 
if [ $? -ne 0 ]
then 
    echo "nginx is not installed....We are going to install it now"
dnf install nginx -y
   VALIDATE $? "nginx"
else
 echo " My nginx is already installed .... nothing to do "
 fi
