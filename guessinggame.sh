#!/bin/bash

function guessing (){
  num_files=$(ls -1 | wc -l)
  response=0
  max=$((num_files+5))
  min=$((num_files-5))
  while (( num_files != response )) 
  do
    echo "How many files are in the current directory"
    read response
      if (( num_files != response ))
      then
        if (( response > max ))
        then
          echo "the guess is too high"
        elif (( response < min ))
        then
          echo " the guess is too low"
        else
          echo " your guess is close"
        fi
      else
        echo " congratulation , your guess is correct"
      fi
done
}

guessing
