#!/bin/bash

#script takes two inputs, the name of the file and the label to apply
name=$1
labell=$2

#remove line breaks from original file
tr -d '\n' < $name > nobrk.txt

#replace each period with the assigned label
sed "s/[.]/\."__label__$labell" /g" nobrk.txt > lbl.txt

#add line breaks after each training sentence
tr '.' '\n' < lbl.txt > fin.txt 
