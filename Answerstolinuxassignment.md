# Answers to assignment on understanding of unix, working with files in  unix, file manipulations, git and markdown syntax.
*Question 1*
* 4 processes.
```bash=
ps | wc -l
```

*Question 2*
* create a bash script(.sh).Within the script run *date,who -q,uptime* commands.redirect(>) the bash file to a logfile (time.log) 
```bash=
nano time.sh
 #Getting time,user and uptime
 date
 who -q
 uptime
bash time.sh > time.log
```

*Question 3*
* use command (*touch*)
```bash=
touch empty.txt
```

*Question 4*
* use command (mkdir) combined with flag (-p)= mkdir -p
```bash=
mkdir -p work/mini-project/RNA-Seq/
```

*Question 5*
* It does not change the contents of the file.
```bash=
mv seqs.txt sequences.fasta
```

*Question 6*
* use echo command and then redirect it to the name of the file.( echo "Hello,world!" > universal_greetings.txt)
```bash=
echo "Hello world!" > universal_greetings.txt
```

*Question 7*
* It will still have the same output but this time the file name has changed -("Universal greetings.txt")

*Question 8*
* Run command (curl -ljo) attaching it with the link provided after a 'raw'request from the repository.This will save the file *test.fa* to the current directory you executed the command from.
```bash=
curl -ljo https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa
```

*Question 9*
* use command (wc) with flag (-l) to the file *test.fa* gives the count of the number of total lines in the file.
```bash=
wc -l test.fa
```
* use command (grep) and the identifier (">") then pipe it to the command (wc) with the flag (-l) to the file.Gives the count of the *greped* number of lines in the file with the identifier.
```bash=
grep ">" | wc -l test.fa
```

*Question 10*
* use command (grep) with the identifier (">") and then redirect (>) in the file  "identifiers.txt"
```bash=
grep ">" > identifiers.txt
```

*Question 11*
* use command (sed) with flag 's/A/a/g' to the file *test.fa* = sed -i 's/A/a/g'
```bash=
sed -i 's/A/a/g' test.fa
```

*Question 12*
* use command (grep) with the identifier ">"

*Question 13*
You run this;
```bash=
$ grep ">" test.fa | cut -d, -f1 | sed 's/PREDICTED://g' | awk '{print $2,$3}
```

*Quetsion 14*
* Redirected the command output in question 13 to a file named species.txt.Then run the below command.
```bash=
sort | uniq -c species.txt
```

*Question 15*
* use this loop = for filename in {1..30};  do;  echo $filename;  done: This creates the integers each per line.
```bash=
# creating integers.
for filename in {1..30}
do
    echo $filename
done
```

*Question 16*
* use command (touch) and the pipe into a loop that will and the suffix.data = touch trials{1..20} for file in trials{1..20}; do;  mv "$file" "${file}.data"; done
```bash=
touch trials{1..20} | for file in trials{1..20}; do; mv "$file" "${file}.data"; done
```

*Question 17*
* one can not be devided by 0.*expr* gives the reway to display the integer after divission has been executed.

*Question 18*
* It appends the output and error to two different files separately.
```bash=
echo output 1 >> standdoutp.log && echo error 2 >> standderror.log
```

*Question 19*
* see bash script.
```bash=
nano greetings.sh

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

bash greetings.sh

```
*Question 20*
* **cd ../../fun_status
```bash=
cd ../../fun_status
```
*Question 21*

```bash=
nano generator.sh
# making directories
for d in {0..9}
do
   mkdir icp"$d"
cd icp"$d"
   touch "$d" file.{0..9}.txt
cd ..
done

bash generator.sh
cd icp0
ls
```