#!bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))
if [[ $ispresent -eq $randomcheck ]]
then
      echo "Employee is Present"
else
      echo "Employee is Absent"
fi
echo"************************************************************"

isPresent=1
random=$(( RANDOM%2 ))
echo "Random number: "$random
if(( $random == $isPresent ))
then
echo "Employee is Present!"
empHrs=8
ratePerHour=20
salary=$(( $empHrs * $ratePerHour))
else
echo "Employee is absent!"
salary=0
fi

echo "Salary: $salary"

echo"**********************************************************"

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
random=$(( RANDOM%3 ))
echo "Random number: " $random
if(( $random == $IS_PART_TIME ))
then
empHrs=4
elif(( $random == $IS_FULL_TIME))
then
empHrs=8
else
empHrs=0
fi
echo "Employee hours: " $empHrs
salary=$(( $empHrs * $ EMP_RATE_PER_HR ))

echo "Salary: $salary"

echo"*****************************************************"
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalSalary=0
for(( day=1 ; day <= $NUM_WORKING_DAYS; day++ ))
do
random=$(( RANDOM%3 ))
case $random in
$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0
esac
salary=$(( $empHrs * $ EMP_RATE_PER_HR))
echo "Day: $day Salary: $salary"
totalSalary=$(( $totalSalary + $salary ))
done

echo "Total Salary: $totalSalary"
echo "**********************************************************"
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=10
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0

while(( $totalEmpHrs < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
((totalWorkingDays++))
echo "Total working day: $totalWorkingDays"
random=$(( RANDOM%3 ))

case $random in

$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0

esac

totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
echo "Total Employee Hours: $totalEmpHrs"

done
totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR))
echo "Total Salary: $totalSalary"
echo "*************************************************************"
[8:07 PM, 11/15/2020] Ashwini: IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=10
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0

while(( $totalEmpHrs < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
((totalWorkingDays++))
echo "Total working day: $totalWorkingDays"
random=$(( RANDOM%3 ))

case $random in

$IS_PART_TIME) empHrs=4
;;
$IS_FULL_TIME) empHrs=8
;;
*) empHrs=0

esac

totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
echo "Total Employee Hours: $totalEmpHrs"

done
totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR))
echo "Total Salary: $totalSalary"
[8:15 PM, 11/15/2020] Ashwini: #! /bin/bash
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20
totalEmpHrs=0
totalWorkingDays=0
totalWorkHours=0

#Declaring dictionary
declare -A dayWiseWages
function calculateDailyWage()
{
empHrs=$1
daySalary=$(( $empHrs * $EMP_RATE_PER_HR ))
echo $daySalary
}

function getWorkingHours()
{
case $1 in
$IS_FULL_TIME ) empHrs=8
;;
$IS_PART_TIME ) empHrs=4
;;
*) empHrs=0
;;
esac
echo $empHrs
}

while(( $totalWorkHours < $MAX_HRS_IN_MONTH && $totalWorkingDays < $NUM_WORKING_DAYS ))
do
((totalWorkingDays++))
#Calling function getWorkingHours by passing random number
workHours="$( getWorkingHours $(( RANDOM%3 )) )"

echo "Work hours from function getWorkingHours()::::::::::>>> $workHours "
totalWorkHours=$(( $totalWorkHours + $workHours ))
echo -e "TotalWorkHours: $totalWorkHours\n"

#Using array to store day-wise salary
empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"

#Using dictionary to store day-wise salary
dayWiseWages[$totalWorkingDays]="$(calculateDailyWage $workHours)"

done

totalSalary=$(( $totalWorkHours * $EMP_RATE_PER_HR ));
echo -e "\n::::::::::::Printing Days from array::::::"
echo ${!empDailyWage[@]}

echo -e "\n::::::::::::Printing salary stored day wise in an array:::::::::::::::"
echo ${empDailyWage[@]}

echo -e "\n::::::::::::Printing Days from dictionary::::::"
echo ${!dayWiseWages[@]}

echo -e "\n::::::::::::Printing salary stored day wise in dictionary:::::::::::::::"
echo ${dayWiseWages[@]}
echo "Total salary: $totalSalary"
