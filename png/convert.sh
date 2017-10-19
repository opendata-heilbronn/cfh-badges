#!/bin/bash
if ! which inkscape > /dev/null; then
	echo "inkscape not installed, please install it.  sudo apt install inkscape"
else
	FILES=../svg/*
	for f in $FILES
	do
	  name=$(basename $f) #filename with extention, no path
	  fName=${name%.*}    #filename without extention
	  echo "converting $name"
	  # take action on each file. $f store current file name
	  inkscape -z -e $fName.png -h 512 $f
	done
fi
