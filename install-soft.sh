#!/usr/bin/env bash
#todo: install docker

apt-get install mc

# install java
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get -y install oracle-java8-installer
apt-get -y install oracle-java8-set-default

apt-get -y install maven

apt-get -y install xclip

apt-get -y install expect