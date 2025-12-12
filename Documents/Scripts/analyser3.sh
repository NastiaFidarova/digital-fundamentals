#!/bin/bash

var18=0
var17=0
for var in $(ls $1)
do
    for into in $(cat $1$var)
    do
        age=$(echo $into | cut -d ":" -f2)
        if [[ $age -ge 18 ]]
        then
        var18=$((var18+1))
        else
        var17=$((var17+1))
        fi
    done
done
echo -e "Несовершеннолетних: $var18, Совершеннолетних: $var17"
