#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local time=$2
    local rate=$3

    # Calculate simple interest
    local interest=$(echo "scale=2; $principal * $time * $rate / 100" | bc)
    echo "Simple Interest: $interest"
}

# Main script starts here

# Input principal amount
read -p "Enter Principal Amount: " principal

# Input time period in years
read -p "Enter Time Period in Years: " time

# Input annual rate of interest
read -p "Enter Annual Rate of Interest (%): " rate

# Validate inputs (optional)

# Calculate and display simple interest
calculate_simple_interest $principal $time $rate

# End of script
