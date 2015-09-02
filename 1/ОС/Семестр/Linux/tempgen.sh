#!/bin/bash
name=$RANDOM
echo $name
let "count+=1"
if [ -a $name ]
	then echo "Exist"
else
	touch $name
fi