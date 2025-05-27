#!/bin/bash

USERID=$(id -u)
if [ $USERID -eq 0 ]
then
     echo " You are running with root access "
else    
    echo "you are not running with roor access Please run with root access"
fi 
