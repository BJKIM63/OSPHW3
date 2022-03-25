#!/bin/bash


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

num1=$(fileread "num1.txt")
echo "num1: "$num1""
num2=$(fileread "num2.txt")
echo "num2: "$num2""

echo "op:"$op""

case $op in
	add) let result=$num1+$num2;;
	sub) let result=$num1-$num2;;
	div) let result=$num1/$num2;;
	mul) let result=$num1*$num2;;
esac

echo "result: "$result""

