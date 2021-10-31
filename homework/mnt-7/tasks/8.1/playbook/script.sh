#!/usr/bin/env bash

IMAGES=("ubuntu" "centos" "fedora")

# stop all containers
docker stop $(docker ps -a -q)

# remove all containers
docker rm $(docker ps -a -q)

# run container

for IMAGE in "${IMAGES[@]}"
do
  docker run -d -it --name $IMAGE $IMAGE bash
done

# run ansible
ansible-playbook -i inventory/prod.yml site.yml
