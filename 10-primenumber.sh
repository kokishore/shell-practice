#!/bin/bash

# Read number from user
read -p "Enter a number: " num

# Check if number is less than 2
if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number."
    exit 0
fi

# Check for factors
is_prime=1
for (( i=2; i*i<=num; i++ ))
do
    if (( num % i == 0 )); then
        is_prime=0
        break
    fi
done

# Output result
if [ "$is_prime" -eq 1 ]; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi
