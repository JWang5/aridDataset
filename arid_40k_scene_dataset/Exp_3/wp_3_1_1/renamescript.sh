#!/bin/bash

f="/home/jiayi/ObjectRecognition/arid_40k_scene_dataset/Exp_3/wp_3_1_1"
#for f in $rootname/*; do
result="${f%"${f##*[!/]}"}"
result="${result##*/}_"
printf '%s\n' "$result"
for i in $f/*.json; do
name="${i%"${i##*[!/]}"}"
name="${name##*/}"
printf '%s %s\n' "$name" "$i"
mv "$i" "$f/$result$name"; done 
#:;done
