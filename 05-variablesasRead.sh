#!/bin/bash

TIMESTAMP=$(date)

echo " Enter your PIN Number: "
read PIN
echo "your PIN Number is $PIN "

echo " Enter your PIN Number: "
read -s PIN
echo "your PIN Number is $PIN "
echo "script executed at this $TIMESTAMP"