


















#calculator
#!/bin/bash
#get user input 
read -p "enter first number: " num1
read -p "enter second number: " num2
read -p "enter operation(+, - *, /, %, **):" op

#PERFORM CALCULATION
echo " ==========================="
echo "Fist_number:$num1"
echo "second_number:$num2"
echo "operation:$op"
echo "============================"

case $op in
	+) Result=$((num1 + num2))
		echo "Result: $num1 + $num2 = $Result" ;;
	-) Result=$((num1 -num2))
		echo "Result: $num1 - $num2 = $Result" ;;
	\*) Result=$((num1 * num2))
                echo "Result: $num1 * $num2 = $Result" ;;
	/) Result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $Result" ;;
	%) Result=$((num1 % num2))
                echo "Result: $num1 % $num2 = $Result" ;;
	**) Result=$((num1 ** num2))
                echo "Result: $num1 ** $num2 = $Result" ;;
	/)

		if [ $num2 -eq 0 ]; then

			echo "Error"
		
		else
			
			Result=$(echo "scale=2; $num1 / $num2" | bc)
			echo "Result: $num1 / $num2 = $Result"
		fi

		;;

	*) echo "Invalid opearion" ;;
esac
echo "==============="

	














: << 'MYCOMMENT'

#Numeric Variables
#!/bin/bash
a=1000
b=2589

#Arithmetic operations
echo "a = $a,b = $b"
echo "Add: $((a + b))"
echo "sub:$((a-b))"
echo "Mul:$((a*b))"
echo "Dive:$((a/b))"
echo "modulus:$((a%b))"
echo "Exponent:$((a**b))"



: << 'MYCOMMENT' 
#!/bin/bash
#Opearions

name="mounika"
Greetings="hello"
#concatination=
message="$Greetings, $name"
echo "$message"

#string length
echo "Length of name: ${#message}"

#substring
echo "First 3 letters:${message:0:3}"
echo "from position: ${name:3}"
echo "last 3 letters:${message: -3}"
echo "Uppercase:${message^^}"
echo "Lowercase :${name,,}"
echo "First letter uppercase: ${message^}"
MYCOMMENT
