#!/bin/bash 

read -p "Enter how many players want to play:" n

pos=0

die=$((1+RANDOM%6))
newpos=$(( $pos+$die ))

echo new positon is $newpos
