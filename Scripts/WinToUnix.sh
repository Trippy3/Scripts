#!/bin/bash
if[$# = 0]
then
	echo "usage:WinToUnix4 difference"
	exit 1
fi
for file in "$@"
do
	if[-f $file]
	then
		mv $file ${file}.org
		nkf -w -Lu ${file}.org > $file
	else
		echo "$file:No such file"
	fi
done
