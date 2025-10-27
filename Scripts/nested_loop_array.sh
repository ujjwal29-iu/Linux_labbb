#!/bin/bash

names=("vaibhav" "swastik")
subjects=("Math" "Science")

for name in "${names[@]}"
do
  for subject in "${subjects[@]}"
  do
    echo "$name is studying $subject"
  done
done