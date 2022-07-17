#!/bin/bash
#set -x
foo=$*

for (( i=0; i<${#foo}; i++ )); do

    if [[ `echo ${foo:$i:1}` == [A-Z] ]]
        then
            lower_str=$(echo "${foo:$i:1}" | tr '[:upper:]' '[:lower:]')
            revstr=$revstr$lower_str
   
    elif [[ `echo ${foo:$i:1}` == [a-z] ]]
        then
            uper_str=$(echo "${foo:$i:1}" | tr '[:lower:]' '[:upper:]')
            revstr=$revstr$uper_str
    else 
            other_str=$(echo "${foo:$i:1}")
            revstr=$revstr$other_str
    fi

done

echo $revstr | rev