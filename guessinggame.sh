#!/user/bin/env bash
# File guessinggame.sh

# A script that ask continuously the user to guess the number of files in the current directory # 


echo "how many files are in the current directory ?"
read response

n=$(ls -A | egrep [^guessinggame.sh] | wc -l)             # n= number of files in the current directory except the guessinggame.sh #

while [[ $response != $n ]]
do
	function evaluate {                               # Function that determin either if the response given by the user is a digit or not #
	if [[ $response =~ ^[0-9]+$ ]]
	then                                              # value = 1 if $response is a digit #
		value=1                                   #       = 0 if $response is not a digit # 
	else
		value=0
	fi
	}

	evaluate

	if [[ $value -eq 0 ]]
	then
		echo "Please enter a number"
	else
		if [[ $response -gt $n ]]
		then
			echo "Your answer is too high than the exact number of files in this directory"
		else 
			echo "Your answer is too low than the exact number of files in this directory"
		fi
	fi

	echo "Lets try again"
	echo
	read response
done

echo "Congratulations ! There are exactly $n files in the current directory"
echo "Program end"
