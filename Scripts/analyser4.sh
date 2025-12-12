#!/bin/bash

max=100
min=0

for var in $(ls $1)
do
    for info in $(cat $1$var)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $age -gt $max ]]
        then 
        max=$age; 
        namemax=$name; 
        emailmax=$email
        fi
        if [[ $age -lt $min ]]
        then 
        min=$age; 
        namemin=$name; 
        emailmin=$email
        fi
    done
done
echo -e "Данные самого старого: $namemax в возрасте $max с почтой $emailmax"
echo -e "Данные самого молодого: $namemin в возрасте $min с почтой $emailmin"
