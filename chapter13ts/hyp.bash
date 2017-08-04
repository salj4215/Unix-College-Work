#!/bin/bash

# this script is called hyp.bash
# This script will call the hyp program and process the inputted number
# lets ask for 2 numbers from the user of this program
# we will put the first number "one" and the second number into "two"

echo "Please enter two numbers"
read one two

# now lets call our compiled program and put the results in the variable "ans"

ans=`./hyp $one $two`

# now lets make the output

echo "The hypotenuse of sides $one and $two is $ans"

## end of script
