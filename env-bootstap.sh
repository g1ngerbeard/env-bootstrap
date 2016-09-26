#!/usr/bin/env bash

# todo: merge this script to env-bootstrap.sh

sudo ./install-soft.sh $(whoami)

echo 'Setting up aliases...'

cat aliases.sh >> ~/.bashrc

echo 'Applying configurations...'

# GNOME workspaces
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ hsize 2
gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ vsize 2

# generate ssh key
echo 'Generating SSH key pair...'
echo -e  'y\n'|ssh-keygen -q -t rsa -N "" -f ~/.ssh/id_rsa

git config --global user.name "Tima Kulishov"

echo 'Copying vim config...'
cp .vimrc ~
