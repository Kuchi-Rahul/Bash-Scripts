#/bin/bash

read -p "Enter the Artifact Filename : " file

list_builds() {
    if [ ! -f "$file" ]; then
        echo "File not found"
        exit 1
    fi

    echo "Here is the Data : "
    echo -e "DATE\tVERSION\tFILE"

    awk -F'_' '{  
        date=$2
        ver=$3
        gsub(".tar.gz","",ver)
        print date, toupper(ver), $0
    }' "$file"
}

list_builds







































