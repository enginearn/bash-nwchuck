#!/bin/bash

echo "What's your name?"
read name

echo "How old are you?"
read age

echo "You are $name and age $age."
echo "shell: $SHELL pwd: $PWD host: $HOSTNAME user: $USER."
echo $twitter

echo "Caluculating..."
echo ".........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 1
echo "**********"

getrich=$((($RANDOM % 15) + $age))

echo "$name, You will become a millionare when you're $getrich years old!"
