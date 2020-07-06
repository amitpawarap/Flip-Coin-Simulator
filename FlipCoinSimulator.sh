#Flip Coin Simulator.
#!/bin/bash -x
#Coin Flip.....................................................................................
toss=$((RANDOM%2))
if [ $toss -eq 1 ]
then
	echo "win"
else
	echo "loss"
fi
#...............................................................................................
#loop For Simulator
hwin=0
twin=0
for((i=0;i<10;i++))
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
done
echo "NO OF TIME HEAD WIN"$hwin
echo "NO OF TIME TAIL WIN"$twin

#.......................................................................................................
