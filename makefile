README.md: guessinggame.sh
	echo "#Guessing Game Project \n" > README.md
	
	echo "In this project we have a script -guessinggame.sh- " >> README.md
	echo "that asks you to guess how many files" >> README.md
	echo "are contained in the current folder.\n" >> README.md
	echo "The time of last update was " >> README.md
	date >> README.md
	echo "\n" >> README.md

	echo "The number of lines in the bash script is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
