#!/bin/bash

mkdir temp
echo "---create temp directory---"
cp -rfp num1.txt num2.txt cal.sh temp
echo "---copy files to temp directory---"

PS3="select anything you want: "

select menu in "add" "sub" "div" "mul"
do
	if [ -n "$menu" ]; then
	echo "---you select "$menu"---"
	break
else
	echo "---you must select the option---"
	fi
done

if [ -e cal.sh ]; then
	echo "---run calculater---"
	./cal.sh "$menu"
else
	echo "---calculate error---"
fi



