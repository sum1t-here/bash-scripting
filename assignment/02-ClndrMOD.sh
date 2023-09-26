# write a shell script to modify  -call comand to display clenders of the specified months .

#!/bin/bash

# Check if the number of arguments is not equal to 2
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 [month] [year]"
  exit 1
fi

# Extract month and year from command line arguments
month="$1"
year="$2"

# Check if the month is valid (between 1 and 12)
if ! [ "$month" -ge 1 -a "$month" -le 12 ]; then
  echo "Invalid month. Please enter a month between 1 and 12."
  exit 1
fi

# Display the calendar for the specified month and year
cal "$month" "$year"
