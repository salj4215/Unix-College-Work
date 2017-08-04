#!/bin/bash

echo "*************************************************************"
echo "                    CIS129 Project 1     "
echo "                      Salleh Jahaf       "
echo "                     April 19th 2016     "
echo "*************************************************************"

echo "1. `id sjahaf`"

echo "2. $USER"

echo "3. $HOME"

echo "4. `last -i -10`"

echo "5. `wc -l /etc/passwd`"

paste <(cal 9 2015| awk '{printf "%-20s\n",$0}') <(cal 12 2015)
