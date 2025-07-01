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

echo "2.Arithmetic Variables"
a=10
b=20
total=$((a+b))
echo $total

echo "Script name: $0" 
echo "First arg: $1"
echo "Second arg: $2"
echo "All args quoted individually: $@"
echo "All args as one string: $*" 
echo "Arg count: $#"
echo "PID of current shell: $$"
echo "Exit status of last command: $?"
echo "PID of last background process: $!"

echo "3.Arrays"

echo "Indexed Array: Numeric (0,1,2...)"
fruits=("apple" "banana" "cherry")
echo ${fruits[0]}
echo ${fruits[@]}

echo "Associative Array: Named keys (name, id, etc.)"
declare -A person
person[name]="uma"
person[age]=20
person[city]="Hyd"
echo ${person[city]}

echo "Scope of variables:"
myFunc() {
  local name="Local variables are declared using local keyword within a function"
  echo $name
}

echo "Unsetting var: Deleting var"
z="unset"
echo $z
unset z

