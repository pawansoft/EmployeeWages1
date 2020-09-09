#!/bin/bash

WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
DAILY_WAGE=0
isPresent=1;
HALF_TIME=4;

attendance=$((RANDOM%3))

if [ $attendance -eq $isPresent ]
then
	DAILY_WAGE=$((DAILY_WAGE + $WAGE_PER_HOUR * $FULL_DAY_HOUR))
	echo "Employee is present"
elif [ $attendance -eq 2 ]
then
	echo "Half Time"
	DAILY_WAGE=$((DAILY_WAGE * $HALF_TIME))

else
	echo "Employee is Absent" 
fi

echo "Daily wage = $DAILY_WAGE"
