#!/bin/bash
WORKDAY_PER_MONTH=20;
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
DAILY_WAGE=0
HALF_TIME=4;
day=1
hour=0
while [[ $day -lt 20 && $hour -lt 100 ]]
do

	attendance=$((RANDOM%3))
	case $attendance in
	1)
		DAILY_WAGE=$((DAILY_WAGE + $WAGE_PER_HOUR * $FULL_DAY_HOUR))
		echo "Employee is present"
		day=$((day+1))
		;;
	2)
		echo "Half Time"
		DAILY_WAGE=$((DAILY_WAGE + $HALF_TIME * $WAGE_PER_HOUR))
		hour=$((hour+4))
		;;

	*)
		echo "Employee is Absent"
		;; 
	esac
done
echo "Daily wage = $DAILY_WAGE"
echo "Full Day: $day"
echo "Part Time: $hour"
