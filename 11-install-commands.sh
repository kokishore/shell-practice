#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo "error:you are not running with root access Please run with root access "
     exit 1
else    
    echo "You already running with root access "
fi 
dnf list installed mysql 
if [ $? -ne 0 ]
then 
    echo "My Sql is not installed....We are going to install it now"
dnf install mysql -y
    if [ $? -eq 0 ]
   then
    echo "Installing Mysql is ....Success"
   else
    echo "Installing Mysql is .... Failure"
    exit 1
    fi

else
 echo " My sql is already installed .... nothing to do "
 fi

