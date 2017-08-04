#!/bin/ksh

# this script is called hyp3.ksh
# This script will call the hyp program and process the numbers in the data file
# look to see if side1 file exists

if [ ! -f ./side1 ]; then
 echo "side1 file missing.. Exiting"
 exit 0
fi

# check for side2 file

if [ ! -f ./side2 ]; then
 echo "side2 file missing.. Exiting"
 exit 0
fi

echo "Both files are available. Continuing"

# now combine the file

paste side1 side2|awk '{print $1 " " $2}' >/tmp/$$

# now lets process the data

while read one two
do
 # now lets call our compiled program and put the results in the variable "ans"

ans=`./hyp $one $two`

# now the output

echo "The hypotenuse of sides $one and $two is $ans"
done</tmp/$$

## end of script
