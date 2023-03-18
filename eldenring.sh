#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"
read class

case $class in
    1)
        type="Samurai"
        hp=10
        attack=20
        ;;
    2)
        type="Prisoner"
        hp=20
        attack=4
        ;;
    3)
        type="Prophet"
        hp=30
        attack=5
        ;;
esac

echo "You were chosen $type. HP is $hp, Attack is $attack."

echo "You Died"

# First beast battle

beast=$(($RANDOM % 2))

echo "Your first beast approaches. Prepare to battle. Pick a number 0 or 1. [0/1]"
read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
    echo "Beast VAQUISHED!! Congrats follow tarnished!"
else
    echo "You Died..."
    exit 1
fi

sleep 2

echo "Boss battle. Get scared. It's Margit. Pick a number between 0-9. [0-9]"
read tarnished

beast=$(($RANDOM % 10))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
    # echo "Beast VAQUISHED!! Congrats follow tarnished!"
    if [[ $USER == "centos7" ]]; then
        echo "Beast VAQUISHED!!"
    fi
elif [[ $USER == "bernard" ]]; then
    echo "Hey, Bernard always wins. You vanquished the beast."
else
    echo "You Died..."
    exit 1
fi
