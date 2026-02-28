#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "=========================="

# Read principal amount
echo "Enter principal amount:"
read principal

# Read rate of interest
echo "Enter rate of interest (per year):"
read rate

# Read time period
echo "Enter time period (in years):"
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Check if bc command succeeded
if [ $? -eq 0 ]; then
    echo "=========================="
    echo "Simple Interest: $simple_interest"
    echo "Total Amount: $(echo "scale=2; $principal + $simple_interest" | bc)"
else
    echo "Error: Calculation failed. Please make sure 'bc' is installed."
    echo "You can install bc using: sudo apt-get install bc (on Ubuntu/Debian)"
fi
