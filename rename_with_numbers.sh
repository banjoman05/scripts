#!/bin/bash

# The purpose of this script is to iterate through-
# each file in a directory and rename it.

# Define vars
number=""

# Read initial starting number from user
read -p "Starting Number: " number

# Start loop
for f in *; do

# Move files from original name to new name
# This sed regex replaces the first two characters-
# of the file name with the number provided by user.
mv "$f" "$(echo $f | sed "s/^../$number/")";

# Test disabled, but leaving it here
#echo "$(echo $f | sed "s/^../$number/")"

# Increment the number provided by one during each loop.
number=$((number+1))

# Complete loop when it runs out of files in CWD
done
