#!/bin/bash
echo "Write your name"
read  name
echo "Write your user name"
read user_name
echo "Hello  ${name}" > myfile
chown  ${user_name}:${user_name} myfile
chmod 521 myfile
cat myfile
