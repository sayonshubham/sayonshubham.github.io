echo "***For loop***"
echo "enter the no. for which you need the factorial"
read num
fact=1
for((i=1;i<=num;i++))
do
	fact=$((fact*i))
done
echo "Factorial: " $fact

echo

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