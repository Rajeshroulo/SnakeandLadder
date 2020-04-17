#!/bin/bash 

read -p "Enter how many players want to play:" n

LADDER=1
SNAKE=2
NO_PLAY=0
POS=0
INITIAL_POS=0
GOAL=100
dieplay=0

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
    Option=$((RANDOM%3))
	case $Option in
		$LADDER )
			posofPlayer[$player]=$((${posofPlayer[$player]}+$die))
                       	if [ ${positionofPlayer[$player]} -gt $GOAL ]
                       	then
                               	posofPlayer[$player]=$((${posofPlayer[$player]}-$die))
                       	fi
		;;
       		$SNAKE )
               		posofPlayer[$player]=$((${posofPlayer[$player]}-$die))
       			if [ ${posofPlayer[$player]} -lt $INITIAL_POS ]
			then
				posofPlayer[$player]=$INITIAL_POS

		        fi
		;;
		$NO_PLAY )
                        posofPlayer[$player]=$((${posofPlayer[$player]}+0))


    		;;
        esac

  }


 function toknowthewinner( ) {
        tofindinitialposition
        while [ $dieplay = 1 ]
	do
		for (( player=1; player<=$n; player++ ))
		do
			tochecknewposition
			if [ ${posofPlayer[$player]} -eq $GOAL ]
			then
				winner=$player
				break;
			fi
		done
	done

 }
 toknowthewinner
 echo the no of times dice played is $dieplay
 echo the winner of the game is $winner
