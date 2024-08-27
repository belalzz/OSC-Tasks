#!/bin/bash

#to get number of text files in the folder
fCount=$(ls -1 *.txt|wc -l)

#to list text files name in an array
fList=($(ls -1 *.txt))

#iterate on array's element and rename it
for ((i=0;i<fCount;i++))
do
   name="${fList[$i]}"
   mv "$name" "old_$name"
done
