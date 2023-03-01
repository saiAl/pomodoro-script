#!/bin/bash


sessions=0


## focus rounds function ##

rounds() {
    for ((round=1; round<5; round++ ))
    do
        echo you\'r $round begain.
        spd-say "start"
        sleep 2s # 25m 

        if [ $round -eq 5 ]
        then
            echo take a break for 5 minutes.
            spd-say "stop"
            sleep 5s # 5m 

        else
            echo take a break for 20 minutes. 
            spd-say "Break for 20 mintes"
            sleep 2s # 20m 
        fi

    done

}



## main loop ## 

while [ 0 ] 
do 
    if [ $((sessions % 4)) == 0 ]
    then
        echo you completed $sessions, do you want to continue? Y or N
        read user_choice
        if [ "$user_choice" == "N" || "$user_choice" == "n" ]
        then
            # summary()
            # exit
        fi 
    fi

    # rounds

done 
