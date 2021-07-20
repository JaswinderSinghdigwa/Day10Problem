#! /bin/bash -x

declare -a arr odd Prime
l=0
p=0
q=0
for ((i=1;i<=100;i++))
do	
	y=$(( $i%$i ))
	a=0
	v=9
	x=$(( $i%2 ))
	d=$(( $i%3 ))
	e=$(( $i%5 ))
	f=$(( $i%7 ))
	if [ $x  -eq $a ]
	then
	echo "It is a even no" $i
	arr[((l++))]=$i
	elif [ $y -eq  $a -a $i -lt $v ]
	then
	echo "It is a odd no " $i
	odd[((p++))]=$i
	elif [ $y -eq $a -a $d -ne $a -a $e -ne $a -a $f -ne $a  ]
	then
	echo "It is a odd no" $i
	odd[((p++))]=$i
	fi
	for  ((m=2;m<i;m++))
	do
		b=$(( $i%$m ))
		if [ $b -eq $a ]
		then
		break;
		fi
	done
	if [ $i -eq $m ]
	then
 	echo "Prime No" $i
	prime[((q++))]=$i
	fi
done
echo ${arr[*]}
echo ${odd[*]}
echo ${prime[*]}
