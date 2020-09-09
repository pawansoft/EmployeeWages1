#!/bin/bash
WORKDAY_PER_MONTH=20;
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
DAILY_WAGE=0
HALF_TIME=4;

for (( count = 1; count <=  $WORKDAY_PER_MONTH; count++ ))
do

	attendance=$((RANDOM%3))
	case $attendance in
	1)
		DAILY_WAGE=$((DAILY_WAGE + $WAGE_PER_HOUR * $FULL_DAY_HOUR))
		echo "Employee is present"
		;;
	2)
		echo "Half Time"
		DAILY_WAGE=$((DAILY_WAGE + $HALF_TIME * $WAGE_PER_HOUR))
		;;

	*)
		echo "Employee is Absent"
		;; 
	esac
done
echo "Daily wage = $DAILY_WAGE"
