#!/bin/bash
## declare an array variable
declare -a array=("C:\Users\User\Documents\comp3104\.gitignore" "C:\Users\User\Documents\comp3104\guc.txt" "C:\Users\User\Documents\comp3104\ff.php")

# get length of an array
arraylength=${#array[@]}

# use for loop to read all values and indexes
for (( i=1; i<${arraylength}+1; i++ ));
do
	FILE=${array[$i-1]}
	if [ -f "$FILE" ]; then
		echo "$FILE exist"
	else
		echo "$FILE does not exist"
	fi
done

