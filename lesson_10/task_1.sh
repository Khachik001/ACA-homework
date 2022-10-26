#!/bin/bash 
export counter=$((counter+1));
 file="backup_$((${counter}%10))"
 touch ~/${file}
 `echo  -e "\n \t \tIp Details \n" > ~/${file} && ip add >> ~/${file}
 echo -e "\n \t \t Work time info \n" >> ~/${file} && uptime >> ~/${file}
 echo -e "\n \t \tLast login \n" >> ~/${file} && lastlog >> ~/${file}
 echo -e "\n \t \tDisk Space Utilization \n" >> ~/${file} && df -H >> ~/${file}
 echo -e "\n \t \t Free memory stats \n" >> ~/${file} && free -mh >> ~/${file}`
exec bash
 

