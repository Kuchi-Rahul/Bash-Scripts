#!/bin/bash


func_name() { #initiating a function

read -p "Enter the file name You want to see " file

	if [[ -f "$file" ]]; then #checking if it is a file or not
		read -p "Enter the Department name : " Dept
                grep -i "$Dept" "$file" | cut -d"|" -f1,2,4 | tr 'a-z' 'A-Z' | tr "|" "\t"  #Getting desired output ,Data and question at down
	else
		echo "The given file Doesnt Exist"
		return 1
	fi 

}

func_name #calling func




#QUESTION

#Find all employees in a specific department (input argument).

#Convert their names to uppercase.

#Print ID, Name, and Salary only.

#Replace | with a tab for clean formatting.

#Implement this in a function so you can call it for multiple departments.

#Script should use awk, sed, grep, tr, cut, and optionally find if scanning multiple files.




#DATA


#101|Rahul|DevOps|50000
#102|Teja|Developer|45000
#103|Sita|DevOps|55000
#104|Anita|Tester|40000
#105|Vikram|Developer|47000

