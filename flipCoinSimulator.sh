#! /bin/bash/ -x
heads=1
tails=0
headsCount=0
tailsCount=0
count=1
read -p "enter a number how many times to flip a coin " multiple
	while (( $count<=$multiple ))
	do
		flip=$(( RANDOM%2 ))
		if (( $flip==$heads ))
		then
			((headsCount++))
		else
			((tailsCount++))
		fi
		((count++))
	done
echo "HEADS WON "$headsCount" times"
echo "TAILS WON "$tailsCount" times"
