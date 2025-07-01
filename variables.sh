#! /usr/bin/bash

echo -e "Variables:\n"

echo "1.Basic Declaration"
name="Uma"	#declaring a var

echo "Variables are accessed in 4 ways"
echo $name
echo ${name}
echo "$name"
echo -e ${name:-"No name"}"\n"	#if name is empty, then print No Name

echo "2.Command Substitution:"
todayDate=$(date)
whoami_output=`whoami` #Backticks also work, but less recommended
echo -e $todayDate "\n"

echo "3.Exporting (Environment Variables)"
export data="Variable" #This variable can be used in child processes
echo -e $data"\n"


echo "4.Read-only Variable (Constant)"
readonly pi=3.14
echo -e $pi "\n"

echo "Arithmetic Variables"
