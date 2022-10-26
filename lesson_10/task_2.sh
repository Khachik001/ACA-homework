#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
touch ~/log.txt
first_stat=`cat ~/log.txt | wc -l`
`sudo grep -i "error" /var/log/* >> ~/log.txt 2>/dev/null`
second_stat=`cat ~/log.txt | wc -l`
count=$((second_stat-first_stat))
if [[ ${first_stat} -gt 0 ]];then
 for((i=0;i<=${count};i++)); do
	 echo "Line $((first_stat+i)) $(cat ~/log.txt | head -$((first_stat+i)) | tail -1)" | $(mail -s "Error" `whoami`)
done

fi
