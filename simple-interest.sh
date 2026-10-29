#!/bin/bash
#
# simple-interest.sh
# Calculates Simple Interest and Total Amount from user input.
#
# Formula:
#   Simple Interest (SI) = (Principal * Rate * Time) / 100
#   Total Amount         = Principal + SI
#
# Usage:
#   chmod +x simple-interest.sh
#   ./simple-interest.sh

# Checks that the given value is a positive number (integer or decimal)
is_positive_number() {
    [[ "$1" =~ ^[0-9]+([.][0-9]+)?$ ]] && awk -v n="$1" 'BEGIN { exit !(n > 0) }'
}

echo "=================================="
echo "    Simple Interest Calculator    "
echo "=================================="

# Input: principal amount
read -p "Enter the principal amount: " principal
if ! is_positive_number "$principal"; then
    echo "Error: Principal must be a positive number."
    exit 1
fi

# Input: annual rate of interest
read -p "Enter the rate of interest (% per annum): " rate
if ! is_positive_number "$rate"; then
    echo "Error: Rate of interest must be a positive number."
    exit 1
fi

# Input: time period
read -p "Enter the time period (in years): " time
if ! is_positive_number "$time"; then
    echo "Error: Time period must be a positive number."
    exit 1
fi

# Calculation (awk handles decimal values)
simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total_amount=$(awk -v p="$principal" -v si="$simple_interest" 'BEGIN { printf "%.2f", p + si }')

# Output
echo "----------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate %"
echo "Time Period      : $time years"
echo "----------------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
echo "=================================="
