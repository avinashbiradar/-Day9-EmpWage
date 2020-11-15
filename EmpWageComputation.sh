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
