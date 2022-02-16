#!/bin/bash

danas=$(date +"%d.%m.%Y.")


if [ $# -eq 0 ]
then
	printf "Dobrodosli\n"
grep -i "$danas" beleske.txt

elif [ $1 == "-a" ]
then
     echo "$danas $2" >> beleske.txt

fi
