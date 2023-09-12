#!/bin/bash

# URL of the text file
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Output TSV file name
OUTPUT_FILE="data.tsv"

# Download the data from the URL
curl -s "$URL" > temp.txt

# Extract Scheme Name and Asset Value and save them as TSV
awk -F ';' '{print $4 "\t" $5}' temp.txt > "$OUTPUT_FILE"

# Clean up temporary file
rm temp.txt

echo "Data extracted and saved as $OUTPUT_FILE"