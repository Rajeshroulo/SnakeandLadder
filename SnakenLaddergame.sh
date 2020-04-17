#!/bin/bash 

read -p "Enter how many players want to play:" n

LADDER=1
SNAKE=2
NO_PLAY=0
POS=0
INITIAL_POS=0
GOAL=100
declare -A posofplayer

function tofindinitialposition( ) {
 for(( player=1; player<=$n; player++ ))
   do
     die=$((1+RANDOM%6))
     newpos=$(( $POS+$die ))
     posofplayer[$player]=$newpos
   done
}

  function tochecknewpositon( ) {
   die=$((1+RANDOM%6))
    check=$((RANDOM%3))
	case $check in
		$LADDER )
			posOfPlayer[$player]=$((${posofPlayer[$player]}+$die))
                       	if [ ${positionOfPlayer[$player]} -gt $GOAL ]
                       	then
                               	posofPlayer[$player]=$((${posofPlayer[$player]}-$die))
                       	fi
		;;
       		$SNAKE )
               		posofPlayer[$player]=$((${posofPlayer[$player]}-$die))
       			if [ ${posOfPlayer[$player]} -lt $INITIAL_POS ]
			then
				posofPlayer[$player]=$INITIAL_POS

		        fi
		;;
		$NO_PLAY )
                        posofPlayer[$player]=$((${posofPlayer[$player]}+0))


    		;;
        esac

  }






