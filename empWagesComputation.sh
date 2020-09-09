#!/bin/bash
WORKDAY_PER_MONTH=20;
WAGE_PER_HOUR=20;
FULL_DAY_HOUR=8;
DAILY_WAGE=0
HALF_TIME=4;
day=1
hour=0
total_wage=0
while [[ $day -lt 20 && $hour -lt 100 ]]
do

	attendance=$((RANDOM%3))
	case $attendance in
	1)
		echo "Employee is present"
		day=$((day+1))
		;;
	2)
		echo "Half Time"
		hour=$((hour+4))
		;;

	*)
		echo "Employee is Absent"
		;; 
	esac
done
function WorkHour()
{
	day=$1
	hour=$2
	totalHour=$((day*8+hour))
	return $totalHour
}
function TotalWage()
{
	totalHour=$1
	totalWage=$((totalHour*WAGE_PER_HOUR))
	echo "total Wage: $totalWage"
}
function StoreDailyDayAndTotalWage()
{
	day=$1
	DAILY_WAGE=$((DAILY_WAGE + $day * $WAGE_PER_HOUR * $FULL_DAY_HOUR))
	totalHour=$2
        totalWage=$((totalHour*WAGE_PER_HOUR))
        echo "total Wage: $totalWage"
	echo "day : $day"
	echo "daily Wage: $DAILY_WAGE"

}

WorkHour $day $hour
retHour=$?

TotalWage $retHour

StoreDailyDayAndTotalWage $day $retHour


