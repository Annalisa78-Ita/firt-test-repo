#!/usr/bin/env bash

#=====================================
#BRAIN VS MACHINE
#A simple Bash guessing game
#=====================================

clear

echo "=================================" 
echo " BRAIN VS MACHINE" 
echo "=================================" 
echo "" 
echo "I'm thinking of a number between 1 and 100." 
echo "Can you guess it?" 
echo ""

# Generate a random number

secret_number=$(( RANDOM % 100 + 1 ))

attempts=0

# Game loop

while true; do

read -p "Your guess: " guess

# Check if input is a valid integer

if ! [[ "$guess" =~ ^[0-9]+$ ]] || (( guess < 1 || guess > 100 )); then
    echo "Please enter a number between 1 and 100!"
    continue
fi

((attempts++))

if (( guess < secret_number )); then
    echo "Too low! Try again."

elif (( guess > secret_number )); then
    echo "Too high! Try again."

else
    echo ""
    echo "*********************************"
    echo "       CONGRATULATIONS!"
    echo "*********************************"
    echo ""
    echo "You found the secret number: $secret_number"
    echo "Number of attempts: $attempts"
    echo ""
    echo "Thanks for playing!"
    break
fi


done
