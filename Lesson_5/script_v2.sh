echo "Write your name"
read name
echo "`who -u`">"${name}-`date +'%d-%m-%Y'`" && bzip2 "${name}-`date +'%d-%m-%Y'`"



