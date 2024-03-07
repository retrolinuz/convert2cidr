#!/bin/bash

# Check if an argument is given
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 file_with_subnet_masks"
    exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "File $input_file not found!"
    exit 1
fi

# Create or clear the output file
> cidr.txt

# Read each subnet mask from the file, appending a newline at the end of the file if necessary
while IFS= read -r subnet_mask || [ -n "$subnet_mask" ]; do
    # Convert subnet mask to binary, then replace non-zero bits with 1, and count them
    cidr_bits=$(echo "$subnet_mask" | tr '.' '\n' | awk '{print and($1,255)}' | while read octet; do printf "%08d\n" $(echo "obase=2; $octet" | bc); done | grep -o "1" | wc -l)
    # Append the CIDR notation to the output file
    echo "/$cidr_bits" >> cidr.txt
done < "$input_file"

echo "Conversion complete. CIDR notations written to cidr.txt"
