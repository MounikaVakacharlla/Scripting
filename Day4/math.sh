: << 'MYCOMMENT'
#Airthmatic operations

echo $(( 2 + 3))
echo $(( 2 - 3))
echo $(( 2 * 3))
echo $(( 2 / 3))
echo $(( 2 % 3))
echo $(( 2 ** 3))

#with variables

a=10
b=55

echo $((a + b))
echo $((a - b))
count=1
echo $((count++))
echo $((++count))
echo $((count--))

#Let command

let result=8*9
echo $result

let a=10 b=5
let sum=a+b
echo $sum

let x=9+8

#expr command(legacy)

expr 5 + 9
expr 10 - 8
expr 7 /* 9
expr 20 - 9
a=5
b=55

expr $a + $b
MYCOMMENT


#bc for floting point
echo "5.5 + 8.9" | bc




























