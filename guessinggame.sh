echo "how many files are in the current directory ?"
read response

n=$(ls | wc -l)

while [[ $response != $n ]]
do
	source evaluate.sh
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
	read response
done

echo "Congratulations ! There are exactly $n files in the current directory"
echo "Program end"
