#!/bin/bash

for var in $(ls $1)
do
    for info in $(cat $1$var)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
    echo -e "Name $name, age $age, email $email"
    done
done
