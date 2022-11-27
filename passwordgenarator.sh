#!/bin/bash
echo Password Generator | toilet -f smmono9 --gay
# Ask user for the string length
printf "\n"
read -p "How many characters you would like the password to have? " pass_length
printf "\n"

# Generate a list of 10 random strings with desired lenth

for i in {1..5}; do (cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*' | fold -w${pass_length} | head -n 1); done

# Print the strings
printf "$pass_output\n"
toilet -f smblock ThankYou
