#!/bin/bash

set -e

read -p "enter the file : " Test

high_cpu_services() {

	echo -e "SERVICE\tCPU\tMEMORY"

	awk -F" " '$2>50' "$Test" | while read -r line; do
	service=$(echo "$line" | cut -d' ' -f1 | tr 'a-z' 'A-Z')
	CPU=$(echo "$line" | cut -d' ' -f2)
	MEMORY=$(echo "$line" | cut -d' ' -f3)
         echo -e "$service\t$CPU\t$MEMORY"
 done | sort -k2 -nr
}

high_cpu_services 



















































