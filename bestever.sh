#!/bin/bash

date

# name="Patricia"
# echo "What's your name?"
# read name
name=$1
compliment=$2

user=$(whoami)
whereami=$(pwd)

echo "Good Morning $name!"
sleep 1
echo "You're looking good today $name!"
sleep 1
echo "You have the best $compliment I've ever seen $name!"
sleep 1
echo "You're logged in as $user and You're on $whereami"
