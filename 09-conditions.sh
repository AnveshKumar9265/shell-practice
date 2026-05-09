#!/bin/bash

NUMBER=$1

# -gt --> greater than
# -lt --> less than
# -eq --> equal
# -ne --> not equal

if [ $NUMBER -lt 10 ]
then
    echo "$NUMBER is less than 10"
else
    echo "$NUMBER is greater than or equal to 10"
fi
