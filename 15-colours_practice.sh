#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N=\e[34m"

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
     echo -e "$R error:you are not running with root access Please run with root access  $N "
     exit 1
else    
    echo -e "$G You already running with root access $N "
fi 
# validate functions takes input as exit status, what command they tried to install
VALIDATE(){
    if [ $1 -eq 0 ]
   then
    echo -e "Installing $2 is ....$G Success $N "
   else
    echo -e "Installing $2 is .... $R Failure $N "
    exit 1
    fi
}
dnf list installed mysql 
if [ $? -ne 0 ]
then 
    echo -e  "$Y My Sql is not installed....We are going to install it now $N "
dnf install mysql -y
VALIDATE $? "mysql"   
else
 echo -e " $B My sql is already installed .... nothing to do $N"
 fi

dnf list installed python3
if [ $? -ne 0 ]
then 
    echo -e "$R My python3 is not installed....We are going to install it now"
dnf install mysql -y
  VALIDATE $? "python3"
else
 echo -e " $Rpython3 is already installed .... nothing to do "
 fi
 
dnf list installed nginx 
if [ $? -ne 0 ]
then 
    echo -e "$R nginx is not installed....We are going to install it now" $N
dnf install nginx -y
   VALIDATE $? "nginx"
else
 echo -e " $Y My nginx is already installed .... nothing to do $N"
 fi
