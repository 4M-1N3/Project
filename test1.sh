# scipt that test if the given value of x and y are numbers #

echo "enter two numbers"

read x
read y

#echo $x#
#echo $y#

if [[ $x =~ ^[0-9]+$ ]] && [[ $y =~ ^[0-9]+$ ]]
then 
	echo "$x + $y = $(expr $x + $y)"
else
	echo "$x $y"
fi

echo "The number of lines of code contained in guessinggame.sh is : $(wc -l guessinggame.sh | egrep -o "[0-9]+") "