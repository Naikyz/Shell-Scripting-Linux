#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Invalid input"
    exit 1
fi

if [ $1 -lt 1 -o $2 -lt 1 ]; then
    echo "Input must be greater than 0"
    exit 1
fi

for i in `seq 1 $1`; do
    for j in `seq 1 $2`; do
        printf "$i*$j=`expr $i \* $j` "
    done
    echo
done
