#! /bin/bash -x

declare -a t
t=("Rock" "Paper" "Scissors" )

user=${t["$((RANDOM%3))"]}

computer="False"

while [ "$computer" == False ]
do
    computer=${t[((RANDOM%3))]}
    if [ "$user" = "$computer" ]
     then
        echo"Tie!"
    elif  [ "$computer" = "Rock" ]
      then
	if [ "$user" = "Paper" ]
	  then
            echo "You lose!" "$user" "covers"  "$computer"
        else
            echo "You win!", "$user" "smashes", "$computer"
	fi
    elif [ "$user" = "Paper" ]
      then
        if [ "$computer" = "Scissors" ]
	 then
            echo "You lose!" "$user" "cut" "$computer"
        else
            echo "You win!" "$computer" "covers" "$user"
	fi
    elif [ "$computer" = "Scissors" ]
      then
        if [ "$computer" = "Rock" ]
         then   
	 echo"You lose...", "$user", "smashes", "$computer"
         else
            echo "You win!", "$computer", "cut", "$user"
	fi
    else

        echo"That's not a valid play. Check your spelling!"
    fi
done

