# Subnet Mask to CIDR Conversion Script

This Bash script converts a list of subnet masks provided in a text file into their equivalent CIDR notation and saves the results to a new file. It's a simple yet effective tool for network administrators, engineers, or anyone working with IP addressing and subnetting who needs to quickly convert between subnet mask formats.

## Features

- **Easy Conversion**: Converts subnet masks to CIDR notation with a simple command.
- **Batch Processing**: Processes an entire list of subnet masks from a file at once, saving time and effort.
- **Output File Generation**: Automatically generates a file containing the resulting CIDR notations.

## Prerequisites

To run this script, you will need:
- Bash shell

## Installation

No installation is required. Simply download the script, and you're ready to go. Make sure the script is executable by running the following command:
chmod +x convert_to_cidr.sh

## Usage

    Prepare a text file with subnet masks, each on a new line, in dot-decimal notation (e.g., 255.255.255.0).
    Run the script by providing the input file as an argument:

./convert_to_cidr.sh subnet_masks.txt

    The script will create a new file named cidr.txt containing the CIDR notation for each subnet mask provided.

Example

Given an input file subnet_masks.txt with the following content:

255.255.255.0
255.255.0.0

After running the script, cidr.txt will contain:

/24
/16

## Contributing

Contributions to improve the script are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

