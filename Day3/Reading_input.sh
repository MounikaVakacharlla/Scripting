: << 'MYCOMMENT'
#!/bin/bash
#Read Command

echo "enter your name:"
read name
echo "Hello,$name!"


#Read with prompt(-p)
read -p "enter your name: " name
read -p "enter your age: " age
echo " welcome $name!"
echo " your $age yeras old"

--------------------------------------
#practice

#!/bin/bash
#Deatils
read -p "enter your name: " name
read -p "enter your age: " age
read -p "enter your city: " city
read -p "Profession: " job

echo " Myself $name "
echo " iam $age years old "
echo " i am living in $city"
echo " My Proffession is $job"

#Birth year
current_year=$(date +%Y)
birth_year=$((current_year - age))
echo " I born in $birth_year"



---------------------------------
#silent input for passwords
read -sp "enter your password: " password
echo #Move to new line after silent input
read -sp "confirm password: " password2
echo

if [ "$password" = "$password2" ]; then
	echo " Password set successfully!"
else 
	echo " oops mismatch Password! "
fi
--------------

#Time out example (-t)
read -t 5 -p " you have 5 second to answer your name? " name
if [ -z "$name" ]; then
	echo -e "\n  time out! No input received."
else
	echo " Hello, $name!"
fi
---------------------------------

#Reading Limited Charcters(-n)

read -n 1 -p "continue? (y/n): " answer
echo 

if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
	echo "contnuing........"
else
	echo "exiting..."
	exit 0
fi
---------------------------------------
MYCOMMENT

#USER REGISTRATION

echo "Registration Page"

read -p " Enter  your name: " name
read -p " Enter your Emailid: " Email
read -p " Enter your phone_number: " phno
read -sp "Enter your password: " password
read -sp "Confirm your password: " password2

echo " Name: $name "
echo " Emailid: $Email " 
echo " Phone_number: $phno "

if [ " password " == "password2" ]; then
	echo "correct pasword"
else
	echo "wrong password"



echo "registration successfull " 









































