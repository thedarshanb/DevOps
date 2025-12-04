#!/bin/bash

read -p "Enter a number: " n

if [ "$n" -le 1 ]; then
    echo "Not Prime Number"
    exit 0
fi

for (( i=2; i*i<=n; i++ )); do
    if (( n % i == 0 )); then
        echo "Not Prime Number"
        exit 0
    fi
done

echo "Prime Number"

