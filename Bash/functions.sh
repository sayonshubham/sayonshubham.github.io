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