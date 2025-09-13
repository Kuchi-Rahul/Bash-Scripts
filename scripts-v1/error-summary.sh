#!/bin/bash

#Question : Uses find to locate all .log files in current directory and subdirectories.Uses grep to keep only lines with ERROR.Extracts the service name with cut.Converts service names to uppercase with tr.Uses awk to count how many errors per service.Uses find to locate all .log files in current directory and subdirectories


# Search recursively for .log files, extract ERROR lines,
# pull out service names, normalize case, and count occurrences.

#!/bin/bash

find ../ -type f -name "*.log" -exec grep -i ERROR {} + \
| cut -d: -f5 \
| cut -d" " -f1 \
| tr 'a-z' 'A-Z' \
| awk '{count[$1]++} END {for (k in count) print k, count[k]}' \
| sort





#Example Data ,copy this in three files and try yourself
#2025-09-12 14:00:12 | service:nginx | level:ERROR | msg:Failed to connect
#2025-09-12 14:02:45 | service:mysql | level:INFO | msg:Query executed
#2025-09-12 14:05:00 | service:nginx | level:ERROR | msg:Timeout

























