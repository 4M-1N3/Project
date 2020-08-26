# Script that determin either if the response given by the user is a digit or not #
# value local variable #
# value = 1 if $response is a digit #
#       = 0 if $response is not a digit #                    


function evaluate {
	if [[ $response =~ ^[0-9]+$ ]]
	then
		value=1
	else
		value=0
	fi
}
