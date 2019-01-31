# /bin/bash
read -p "enter first no: " first_no
read -p "enter second no:" second_no
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