#!/bin/bash

for var in $(ls $1)
do
    for info in $(cat $1$var)
    do
        name=$(echo $info | cut -d ":" -f1)
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $email =~ spbstu.ru$ ]]
        then
            echo -e "Name $name, Age $age, Email $email"
        fi
    done
done
