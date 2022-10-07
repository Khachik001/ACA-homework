echo "Write your name"
read name
echo "`who -u`">"${name}-`date`"
bzip2 "${name}-`date`"


