#!/bin/bash

echo "project management in github"

function fileread(){
while read file
do
	echo "$file"
done < "$1"
}

if [ -z $1 ]; then
	echo "---none operator parameter---"
	PS3="select anything you want: "
	select menu in "add" "sub" "div" "mul"
	do
		if [ -n "$menu" ]; then
		op="$menu"
		break
	else
		echo "---you must select the option---"
		fi
	done
else
	op="$1"
fi

echo

declare -a Array
Array+=($(fileread "num1.txt") $(fileread "num2.txt"))
echo "num1: ${Array[0]}"
echo "num2: ${Array[1]}"

echo "op:"$op""

case $op in
	add) let result=${Array[0]}+${Array[1]};;
	sub) let result=${Array[0]}-${Array[1]};;
	div) let result=${Array[0]}/${Array[1]};;
	mul) let result=${Array[0]}*${Array[1]};;
esac

echo "result: "$result""

