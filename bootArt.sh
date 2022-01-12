#!/bin/bash

filePath=$(dirname ${BASH_SOURCE[0]})

fileNumber=$(ls "${filePath}/asciiFiles" | wc -l )

asciiArt=(${filePath}/asciiFiles/*)

index=$(($RANDOM % $fileNumber + 1))

art=${asciiArt[index]}

cat $art

echo $art

echo "$(tput setaf 2)Welcome Baldo, it is $(date) :) $(tput sgr0)"
