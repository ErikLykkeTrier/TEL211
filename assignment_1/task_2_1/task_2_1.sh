#!/bin/bash
i=0

for var in "$@"
do

	echo "$var""$i"
	let "i+=5"
done

