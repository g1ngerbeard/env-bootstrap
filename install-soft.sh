#!/usr/bin/env bash

echo 'Installing software...'

CURRENT_USER = $1

MINIKUBE_VERSION="v0.10.0"
KUBECTL_VERSION="v1.3.6"

sudo apt-get -y install mc
sudo apt-get -y install git
sudo apt-get -y install vim-gnome

sudo apt-get -y install zsh
chsh -s $(which zsh)

#oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo apt-get -y install maven
sudo apt-get -y install xclip
sudo apt-get -y install expect

# chrome
sudo apt-get -y  install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

sudo apt-get -y install virtualbox

# install java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install oracle-java8-set-default

# Intellij Idea
sudo /idea.sh

#todo: install skype

# docker
sudo ./docker.sh $CURRENT_USER

# kubectl
curl -O "https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

# minikube
curl -Lo minikube "https://storage.googleapis.com/minikube/releases/$MINIKUBE_VERSION/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/"
