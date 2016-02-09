#!/usr/bin/env bash
echo '
alias idea-keyboard="ibus-daemon -rd"
alias mcinstall="mvn clean install -DskipTests"
alias mci2dock="mvn clean install -DskipTests && mvn docker:build"
alias docker-clean="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
' >> ~/.bashrc

