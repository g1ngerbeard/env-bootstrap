#!/usr/bin/env bash

CURRENT_USER=$1

sudo apt-get  update
sudo apt-get -y install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

DOCKER_LISTS='/egroupadd dockertc/apt/sources.list.d/docker.list'

sudo m -f $DOCKER_LISTS
 
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >> $DOCKER_LISTS

sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine

sudo apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual

sudo apt-get -y install docker-engine

getent group docker || groupadd docker 

sudo usermod -aG docker $CURRENT_USER
