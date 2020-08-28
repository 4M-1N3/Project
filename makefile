README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench Peer-graded Assignment: A Guessing Game" > README.md
	date >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in ***guessinggame.sh*** is: *$$(wc -l guessinggame.sh | egrep -o "[0-9]+")* \ " >> README.md
	echo "Link for the GitHub pages site https://4m-1n3.github.io/Project/ " >> README.md
clean:
	rm README.md
