#!/bin/bash
# this script prints out a welecome message
# it demonstrates using variables

export MYNAME="Yuhao"
mytitle="Supremer Commander"

myhostname=`hostname`
ChineseNewYear=$(date +%A)

echo "Welecomr to planet $myhostname, $mytitle $MYNAME!"
echo "Today is ChineseNewYear $ChineseNewYear."

