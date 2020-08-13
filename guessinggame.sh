#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You guessed it!"
		echo "  There are ..."
		for f in $(ls)
		do
			echo "  - $f in this directoty"
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "There is less... try again and press Enter :"
			guess_filenum
		else
			echo "There is more... try again and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Guess how many files are in the current directory and press Enter :"
read guess_filenum
