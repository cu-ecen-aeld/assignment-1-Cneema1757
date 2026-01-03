#!/bin/sh
set -e 
set -u
if [ $# -lt 2 ];
then
    # echo "not enough args"
    exit 1
elif [ $# -eq 2 ]; then
    # echo "Correct amount of args"
    if [ -d $1 ];then
        numfile=$(find $1 -type f | wc -l)
        matchfile=$(grep -r $2 $1 | wc -l)
        echo "The number of files are ${numfile} and the number of matching lines are ${matchfile}"
    else
        echo "Directory not found"
    fi
else 
    echo "TOO many args" 
fi
 