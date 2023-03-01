#!/bin/bash


sessions=0


## focus rounds function ##

rounds() {}



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
