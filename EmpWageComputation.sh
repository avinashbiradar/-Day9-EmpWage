#!bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))
if [[ $ispresent -eq $randomcheck ]]
then
      echo "Employee is Present"
else
      echo "Employee is Absent"
fi

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
