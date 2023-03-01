#!/bin/bash


sessions=0

## summary function ##


# summary() {} 

## focus rounds function ##

rounds() {
    for ((round=1; round<5; round++ ))
    do
        echo You\'r $round Round begain.
        spd-say "start"
        sleep 2s # 25m 

        if [ $round -eq 4 ]
        then
            echo Take a break for 20 minutes.
            spd-say "break for 20 minutes"
            sleep 2s # 20m 

        else
            echo Take a break for 5 minutes. 
            spd-say "stop"
            sleep 2s # 5m 
        fi

    done

}



## main loop ## 

while [ 0 ] 
do 
    rounds
    ((sessions++))
    echo "#####################"

     if [ $((sessions % 4)) == 0 ]
    then
        echo you completed $sessions sessions, do you want to continue? Y or N
        read user_choice
        if [[ "$user_choice" == "N" || "$user_choice" == "n" ]]
        then
            # summary()
            exit
        fi 
    fi


done
