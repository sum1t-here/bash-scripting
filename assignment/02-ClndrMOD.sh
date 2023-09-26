# write a shell script to modify  -call comand to display clenders of the specified months .

#!/bin/bash


if [ "$#" -ne 2 ]; then
  echo "Usage: $0 [month] [year]"
  exit 1
fi


month="$1"
year="$2"


if ! [ "$month" -ge 1 -a "$month" -le 12 ]; then
  echo "Invalid month. Please enter a month between 1 and 12."
  exit 1
fi

cal "$month" "$year"
