#!/bin/bash

# arguments
dataset=${1:-yellow}
year=${2:-2022}
month=${3:-01}

# variables
wget_options="-nc"
url_base="https://d37ci6vzurychx.cloudfront.net/trip-data/"
url_middle="_tripdata_"
extension=".parquet"
filename="$dataset$url_middle$year-$month$extension"
url_file="$url_base$filename"
output_dir="../data/$dataset/data.parquet/$year"
output_filename="$month$extension"

# run stuff
echo $url_file
mkdir -p $output_dir
wget $url_file $wget_options -O $output_dir/$output_filename 