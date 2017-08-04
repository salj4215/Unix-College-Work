#!/bin/bash
##This program will ask the user if they want the temperatures in a data file to be converted from Fahrenheit to Kelvin or Kelvin to Fahrenheit
##This sub-function will create a header for the output

header()
{
 if [ $c -eq 1 ]; then
  echo "       Kelvin Temperature     Fahrenheit Temperature"
 else
  echo "     Fahrenheit Temperature     Kelvin Temperature"
 fi
 echo "     --------------------      ----------------------"
}
##This sub-function will ask the user how they want the data converted
menu()
{
 echo "How do you want the temperatures converted? Enter (1) to convert to Kelvin or enter (2) to convert to Fahrenheit."
 read c
}
##Main
menu
header
FILE=temp.file
## read in each temperature from file
while read temp
do
##Send in user choice and temperature from file into celkel program and assign output to variable
convTemp=`./celkel $c $temp`
##Make the output
echo "         $convTemp"
echo "     -------------------       ------------------"
done < $FILE
##END OF SCRIPT##
