#!/bin/bash
mkdir odd even
for((i=1;i<=20;i+=2)); do
	touch odd/${i}.txt even/$((${i}+1)).txt 
done
echo "Dir odd"
ls odd | sort -n
echo "Dir. even"
ls even | sort -n
