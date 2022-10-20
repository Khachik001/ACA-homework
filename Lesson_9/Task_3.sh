#!/bin/bash
first=$(echo "$1" | grep -E "[0-9]")
if [[ -z "${first}" ]]; then
  echo "Write any number"
elif [[ "$first" -lt 8 || "${first}" -gt 32 ]]; then
  echo "Error"
else
     tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${first} | xargs
fi

