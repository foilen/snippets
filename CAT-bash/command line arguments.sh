#!/bin/bash

# Check params
if [ $# -ne 2 ]
	then
		echo Usage: $0 first second;
		exit 1;
fi

# Show
echo $1 $2
