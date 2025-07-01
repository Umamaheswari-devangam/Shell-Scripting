#! /usr/bin/bash
#This is a comment

echo "Hello World!"
a=10	#Variable
echo "The value of a: $a"

echo "Enter name: "	#user input
read name
echo "Welcome $name"

#Conditional statements
if [ "$name" == "Uma" ]; then
echo "Correct name entered :)"
elif [[ "${name,,}" == "uma" ]]; then
echo "Correct name with different case entered"
else
echo "Wrong name entered"
fi

