#!/bin/sh

set -e
set -u

if [ $# -lt 2 ];
then
    echo "not enough args"
    exit 1
elif [ $# -eq 2 ]; then
    if [ -f $1 ]; then
        echo "${2}" > $1
    else
        DIR="$(dirname "$1")"
        mkdir -p $DIR
        echo "${2}" > $1  
    fi      
else 
    echo "TOO many args" 
fi
