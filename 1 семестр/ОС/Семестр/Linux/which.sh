#!/bin/bash
var=0
if [[ $1 != "" ]];
then
if [[ $1 == "--help" ]]; then
echo "HELP!"; exit;
fi
for i in `echo $PATH|sed -e "s/:/\n/g"`;
do 
if [ -f "$i/$1" ]; then
echo $i/$1;
echo "External";
let var=1;
fi
done;
if [[ $var == 0 ]]; then
echo "Internal"
fi
else
echo "Enter argument!"
fi
