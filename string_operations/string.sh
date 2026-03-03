<< 'MYCOMENT' 
#!/bin/bash

message="He said, \"Hello World\""
echo "$message"


First_Name="Mounika"
Last_Name="Vakacharlla"
full_name="$First_Name $Last_Name"
echo " My full name is $full_name"


echo -e "\n Declaration"

name="Mounika vakacharlla"
echo "name should be: $name"




qoute="Hello"
echo "he said $qoute"


echo -e "\n multi variable"
address="123 main street
APT Main st
New York, Ny 100o8y"

echo " i am living in $address"


echo " string length and charcter counting"

str="Hello, Mounika"
length=${#str}
echo " string: '$str'"
echo "length: $length of charters"


echo -e "length of various strings"

empty=""
space=" "
special="!@#$%^&*()"
unicode="cafe"
multiline="Line1\nLine2"

echo "empty string: ${#empty}"

echo "space string: ${#space}"
echo "special string: ${#special}"
echo "unicode string: ${#unicode}"
echo -e "multiline string: ${#multiline}"

echo -e "Application"

password="secret128"

if [ ${#password} -ge 8 ]; then
	echo "password length is valid(${#password} charcters)"
else
	echo " password is too short (${#password} charcters)"


fi

echo -e "Application"

password="secret"

if [ ${#password} -eq 8 ]; then
        echo "password length is valid(${#password} charcters)"
else
        echo " password is too short (${#password} charcters)"


fi

echo -e "Application"

password="secret128"

if [ ${#password} -gt 8 ]; then
        echo "password length is valid(${#password} charcters)"
else
        echo " password is too short (${#password} charcters)"

fi

echo -e "Application"

password="secre"

if [ ${#password} -lt 8 ]; then
        echo "password length is valid(${#password} charcters)"
else
        echo " password is too short (${#password} charcters)"

fi

echo -e "Application"

password="secret128"

if [ ${#password} -le 8 ]; then
        echo "password length is valid(${#password} charcters)"
else
        echo " password is too short (${#password} charcters)"

fi


Tittle="Text formmating_Inroduction"
width=55
dashes=$((width - ${#tittle}))
echo -n "$title "
printf '%*s' "$dashes" | tr '' 'loop'
echo


echo -e "length of array"

fruits=("apple" "banana" "grapes" "strawberry"  "kiwi" "lemon")

for fruit in "${#fruits[@]}"; do
	echo "$fruit has ${#fruit} charcters"
done


echo "Dynamic Padding"

names=("MOUNIKA" "SRI" " NAGA" " VAKACHARLLA")
max_length=0

for name in "${names[@]}"; do
	if [ ${#name} -gt $max_length ]; then
		max_length=${#name}
	else
		echo "$max_length"
fi
done

#for name in "${names[@]}"; do
#	padding=$((max_length - ${#name}))
#	printf "%s%*s - Person\n" "$name" $padding ""
#done

MYCOMENT



#!/bin/bash
if [ $1 -ge 10 ]; then
    echo "Number is >= 10"
fi




















































































