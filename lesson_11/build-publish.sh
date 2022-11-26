#!/bin/bash
if_no_zero_function()
{
if [ $? -ne 0 ]; then
    echo "$1"
    exit 1
else 
    echo "$2"
fi
}
dockerhub_username="$1"
dockerhub_password="$2"
dockerfile="$3"
image_repository_name="$4"
image_tag="$5"

#if parameters are not received/--help
if [[ ${dockerhub_username} == "--help" || -z "${dockerhub_username}" ]]; then
echo -e  "I will build your image and push it into docker hub registry.
Give me below parameters: 
	dockerhub_username
	dockerhub_password
	dockerfile
	image_repository_name
	image_tag"	
elif [[ -z "$image_tag" ]]; then
  echo "Add the necessary parameters"
  exit 1
fi 
docker login -u ${dockerhub_username} -p ${dockerhub_password} &>/dev/null
if_no_zero_function "Please write valid username or password" "Login Succeeded"
docker build -t ${image_repository_name}:${image_tag} ${dockerfile} &>/dev/null
if_no_zero_function "Write valid parameters" "image build completed, preparing for push"
docker push $image_repository_name:$image_tag
echo "Congratulations on a successful pushing!!"
