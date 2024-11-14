#!/usr/bin/env bash
# File: guessinggame.sh
# Tell the user what to expect:
echo "This program will ask you to guess the number of files that are in the current directory."
# Set the starting values so that before the user enters anything`ZZZ the starting condition will be 'false':
numberoffiles=$(ls | wc -w )
guess=-1
# The following function is here just because the specifications called for a function:
function testguess {
	if [[ $guess -eq $numberoffiles ]] 
	then
		echo "Congratulations! You have guessed the correct number!"
	elif [[ $guess -gt $numberoffiles ]]
	then
		echo "Unfortunaely, your guess was too high.  Try to guess again!"
	else 
		echo "Unfortunaely, your guess was too low."
	fi
}
# Repeat the following loop as long as the guess does not match the number of lines:
while [[ $guess -ne $numberoffiles ]]
do
	echo "To guess the number of files, type in a non-negative integer in decimal notation, then press Enter:"
	read guess
	echo "You entered $guess"
	testguess $guess
done
# Tell the user that the game is over:
echo "Your success ends the program."
