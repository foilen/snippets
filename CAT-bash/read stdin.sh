#!/bin/bash

# Get the text
read -p 'What is your name? ' NAME;
if [ -z "$NAME" ]
	then
		echo 'You did not entered a name';
		exit 1;
fi

echo Your name is $NAME
