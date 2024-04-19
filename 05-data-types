#!/bin/bash

no1=$1
no2=$2

SUM=$(($no1+$no2))

echo " Total of $no1 and $no2 is: $SUM"

# Assigning a string to a variable
my_string="Hello, world!"

# Concatenating strings
concatenated_string="${my_string}, welcome to shell scripting."

# Substring extraction
substring="${my_string:0:5}"  # Extracts the first 5 characters

# String length
length=${#my_string}

# Printing variables
echo "Concatenated String: $concatenated_string"
echo "Substring: $substring"
echo "Length: $length"

# Performing arithmetic operations
num1=10
num2=5
sum=$((num1 + num2))
difference=$((num1 - num2))

# Printing arithmetic results
echo "Sum: $sum"
echo "Difference: $difference"


# Declaring an array
my_array=("apple" "banana" "orange")

# Accessing array elements
first_element="${my_array[0]}"
second_element="${my_array[1]}"

# Adding elements to an array
my_array+=("grape")

# Printing array elements
echo "First Element: $first_element"
echo "Second Element: $second_element"
echo "All Elements: ${my_array[@]}"


# Using numeric values for boolean logic
is_true=1
is_false=0

if [ $is_true -eq 1 ]; then
    echo "This statement is true."
fi


# Accessing special variables
echo "Exit Status of Last Command: $?"
echo "Script Name: $0"
echo "Number of Arguments: $#"
echo "All Arguments as a Single String: $*"
echo "All Arguments as Separate Strings: $@"
