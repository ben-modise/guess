#!/usr/bin/env bash
#File guessinggame.sh

#num_files=$(ls | wc -l)

function guessinggame {
    echo "Guess the number of files in this directory"
    read user_guess
    local num_files=$(ls | wc -l)

    if [[ $num_files -eq $user_guess ]]
    then
        echo "Congratulations! That is the correct answer"
    else
        while [[ $num_files -ne $user_guess ]]
        do
            if [[ $num_files -gt $user_guess ]]
            then
                echo "Too low, try a higher number"
                read user_guess
            elif [[ $num_files -lt $user_guess ]]
            then
                echo "Too high, try a lower number"
                read user_guess
            fi
        done
        echo "Congratulations! That is the correct answer"

    fi
}

guessinggame
