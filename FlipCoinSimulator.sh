#Flip Coin Simulator.
#!/bin/bash -x
hwin=0
twin=0

#Coin Flip.....................................................................................
flip(){
toss=$((RANDOM%2))
if [ $toss -eq 1 ]
then
	echo "HEAD"
	((hwin++))
else
	echo "TAILS"
	((twin++))
fi
}
#...............................................................................................
#loop For Simulator
while [ $hwin -lt 21 ] && [ $twin -lt 21 ]
do
	toss=$((RANDOM%2))
	if [ $toss -eq 1 ]
	then
		echo "HEAD"
		((hwin++))
	else
		echo "TAILS"
		((twin++))
	fi
	flip
done
echo "NO OF TIME HEAD WIN"$hwin
echo "NO OF TIME TAIL WIN"$twin

if [ $hwin -eq $twin ]
then
echo "HEAD WIN BY"$((hwin-twin))
flip
else
echo "TAILS WIN BY"$((hwin-twin))
if [ $hwin -gt $twin ]
	then
		echo "head won by"$((hwin-twin))
	else
		echo "tails won by"$((hwin-twin))
	fi
fi

#.......................................................................................................
