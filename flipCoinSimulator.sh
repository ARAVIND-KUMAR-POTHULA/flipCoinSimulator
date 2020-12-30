#! /bin/bash/ -x
heads=1
tails=0
headsCount=0
tailsCount=0
maxCount=21
	 while (( $headsCount<$maxCount &&  $tailsCount<$maxCount ))
        do

		flip=$(( RANDOM%2 ))
		if (( $flip==$heads ))
		then
			((headsCount++))
		else
			((tailsCount++))
		fi
	done

  if (( $headsCount==$maxCount && $tailsCount==$maxCount ))
  then
	echo "ITS TIE BETWEEN HEADS AND TAILS"
	diff=$(( headsCount-tailsCount ))
	while (( $diff<2 ))
	do
		 flip=$(( RANDOM%2 ))
		if ((  $flip==$heads ))
  		then
        		 ((headsCount++))
			diff=$((headsCount-tailsCount))
  		else
         		 ((tailsCount++))
			diff=$((tailsCount-headsCount))
  		fi

	done
   fi
  
  if (( $headsCount>$tailsCount ))
  then
	diff=$((headsCount-tailsCount))
	echo "HEADS WON "$diff" TIMES MORE THAN TAILS"
  else
	 diff=$((tailsCount-headsCount))
         echo "TAILS WON "$diff" TIMES MORE THAN HEADS"
  fi

