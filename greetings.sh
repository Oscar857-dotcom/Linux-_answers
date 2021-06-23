#Ask for the name
echo " Please input your name"
read name
#Get time and date
date=$(date +%H)
time=$(date +%T)
day=$(date +%D)
#Getting the greetings during the day;Good morning-after midnight to midday;Good afternoon-after midday to evening.
if [ $date -lt "12" ]
then
echo "Good Morning ${name}"
echo "It's now $time on this lovely day of $day."
elif [[ $date -gt "12" && $date -lt "16" ]]
then
echo "Good Afternoon ${name}"
echo "It's now $time on this lovely day of $day."
else
echo "Good Evening ${name}"
echo "It's now $time on this lovely day of $day."
fi
