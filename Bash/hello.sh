# /bin/bash
echo ***To make this file executable tye chmod +x hello.sh***
echo
echo "Hello Shubham Sayon here." #comment for hello world

echo

echo ***User Defined Variables***
name="Shubham Sayon"
echo My name is $name


echo

echo Note : Default variable in which your input goes in built in variable REPLY

echo

echo "***String operations***"
variable="Some String"
echo initialized variable is ${variable}
# String substitution in variables
echo Variable string is changed from $variable to ${variable/Some/A}

#substring
len=7
var="This is a Bash Script"
echo The substring is : ${var:0:len}
echo The substring fron the end is : ${var: -5}
echo The length of entire string is ${#variable}

echo
echo ***Array Operations***
arr=(1 2 3 4 5 6 seven eight nine ten)
echo first element: ${arr[0]}
echo second element: ${arr[1]}
echo third element: ${arr[2]} and fourth element: ${arr[3]}
echo The array is: ${arr[@]} #print all elements
echo No of characters in sixth index ${#arr[6]} 


echo 
echo ***System Variables***
echo The shell name is $BASH
echo The shell versin is $BASH_VERSION
echo The home directory is $HOME
echo The current directory is $PWD
echo "PID of Script: $$"
echo "No of arguements passed to script: $#"
echo "all arguements passed to script: $@"
echo username: $USER

echo
echo ***user entry/ reading from variable***
echo "What is your favourite food?"
read favFood
echo Your favourite food: $favFood
echo "Please enter three course names"
read course1 course2 course3 
echo courses are $course1 ,$course2, $course3
echo
echo ***commenting and reading in the same line***
read -p "enter user name:" id
read -sp "enter password:" pass #hidden string
echo username: $id
echo password: $pass
echo
echo ***reading from array***
echo Enter 3 Names 
read -a Names
echo The names in the array are ${Names[0]}, ${Names[1]}, ${Names[2]}

echo
echo ***If Else in BASH***
read -p "enter username:" chkusr
read -sp "enter password:" chkpass
echo
read -p "enter employee id:" chkid
read -p "enter email id:" chkeid
if [$pass -ne $chkpass] || [$chkuser != $USER] || [$chkid -ne 1094786]
then
	flag=0
	echo "WRONG CREDENTIALS!"
else
	flag=1
	echo "YOU ARE LOGGED IN NOW!"
	echo Welcome $USER

fi

echo Login status: $flag

#if ["$flag" -eq 1] && [[ "$Email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]
if [[ $chkeid =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]] && [$flag -eq 1]
	then
		echo "Your email ID:" $chkeid
	else
		echo "Invalid Email!"
fi


echo "Arithmetic Operation"
echo "10+5=" $((10+5))

echo
echo ***Switch Case / SIMPLE CALCULATOR***
read -p "enter first no: " first_no
read -p "enter second no: " second_no
read -p " press + for addition, - for substraction, / for divide and * for multiplication: " operation

case $operation in
	[+])
	echo result= $(($first_no+$second_no)) ;;
	[-])
	echo result= $(($first_no-$second_no)) ;;
	[*])
	echo result= $(($first_no*$second_no)) ;;
	[/])
	echo result= $(($first_no/$second_no)) ;;
	* )
	echo "YOU ENTERED WRONG OPERATION" ;;
esac

echo

echo "***For loop***"
echo "enter the no. for which you need the factorial"
read num
fact=1
for((i=1;i<=num;i++))
do
	fact=$((fact*i))
	echo "$fact" 
done
echo "Factorial: " $fact


echo "***while loop***"

echo "enter the number"
read x
y=$x
a=1
while [ $x -gt 0 ]
do
	a=$((x%10))
	rev=$((rev*10+a));
	x=$((x/10))
done

if [ $y -eq $rev ]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi


echo
echo "***Function***"
function func()
{
	echo "The values are: $1 and $2"
	return 0
}

echo "enter first value"
read a
echo "enter second value"
read b

func $a $b

