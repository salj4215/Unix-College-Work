#!/bin/ksh

# This will figure the hypotenuse of two sides
# Check for command line arguments

case $# in 
 2|3|4)
  echo "we have command line arguments. lets use two"
  one=$1
  two=$2
 ;;
 1)
    echo "we have one number, need two"
    echo "Please give me another number"
    read two
    one=$1
 ;;
 *)
    echo "Please enter two numbers"
    read one two
 ;;
esac

# call the program

ans=`./hyp $one $two`

# make the output

echo "The hypotenuse of sides $one and $two is $ans"
## end of script ###
