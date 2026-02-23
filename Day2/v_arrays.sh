#!/bin/bash
#Arrays

#Indexed Arrays
fruits=("apple" "banana" "orange" "Mango")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"


#Add to Array
fruits+=("grape")
echo "Added a grape: ${fruits[@]}"

#Loop through array

for fruit in "${fruits[@]}"; do
	echo "I like $fruit"
done

#Associative arrays (key-value pairs)

declare -A person
person["name"]="Mounika"
person["age"]=25
person["city"]="hyd"
person["role"]="Devops Learner"
person["Goal"]="Job"
person["Target"]="July 31"

echo "Name:${person["name"]}"
echo "age:${person["age"]}"
echo "city:${person["city"]}"
echo "role:${person["role"]}"
echo "Goal:${person["Goal"]}"
echo "Target:${person["Target"]}"


#List all keys and values
echo "All Informarion"
for key in "${!person[@]}"; do
	echo " $key: ${person[$key]}"
done
