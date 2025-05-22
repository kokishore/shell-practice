#!/bin/bash

echo "To pass all the varialbles we can use : $@ "
echo "To know the name of the script : $0 "
echo "To know the current working directory : $PWD "
echo "To know home directory of the user : $HOME "
echo "To Know the current user : $USER "
echo "To know number variables passed to the script : $# "
echo " To know the PID of the script : $$ "
sleep 20 &
echo "To know the PID of the which is running in the background : $! "