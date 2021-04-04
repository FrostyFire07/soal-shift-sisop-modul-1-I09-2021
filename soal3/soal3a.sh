#!/bin/bash

dir=/home/julius/Documents/SISOP/Modul_1
> "$dir"/foto.log

for ((i=1; i<=23; i++))
do
	if [ $i -lt 10 ]
		then wget -a "$dir"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$dir"/Collection_0"$i"
	else wget -a "$dir"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$dir"/Collection_"$i"
	fi
done

rdfind -deleteduplicates true /home/julius/Documents/SISOP/Modul_1

i=1
cd "$dir"
for a in Collection_*
do
	if [ $i -lt 10 ]
		then mv -- "$a" "Collection_0$i"
	else mv -- "$a" "Collection_$i"
	fi
let i=$i+1
done
