#!/bin/bash

# variables
start_year=2013
end_year=2022
start_month=1
end_month=12
#datasets=("yellow" "green" "fhvt" "fhvhv")
#datasets=("yellow" "green")
datasets=("green")

# run stuff
for year in $(seq $start_year $end_year)
do
    for month in 0{1..9} {10..12}
    do
        for dataset in "${datasets[@]}"
        do
            #echo $dataset, $year, $month
            ./get-data.sh $dataset $year $month
        done
        #sleep 3
    done
done
