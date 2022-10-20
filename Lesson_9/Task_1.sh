#!/bin/bash
first=$(echo "$1" | grep -E "[0-9]")
if [[ -z "${first}" ]]; then
  echo "Write any number"
elif [[ "$((${first}%3))" == 0 || "$((${first}%5))" == 0 || "$((${first}%7))" == 0 ]]; then
  echo "Divisible"
else 
       echo "Not Divisible"	
fi  
