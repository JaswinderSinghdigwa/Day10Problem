#! /bin/bash -x

x=0
for  ((i=1;i<=100;i++))
do
	echo $i
	t=$(( $i%3 ))
	s=$(( $i%5 ))
	if [ $t -eq $x -a $s -ne $x ]
	then
	echo "3MULTIPLES" $i
	elif [ $s -eq $x -a $t -ne $x ]
	then
	echo "5Multiples" $i
	elif [ $t -eq $x -a $s -eq $x ]
	then
	echo "3&5Multiples" $i
	fi
done
