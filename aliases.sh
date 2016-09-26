alias idea-keyboard="ibus-daemon -rd"
alias mcinstall="mvn clean install -DskipTests"
alias mci2dock="mvn clean install -DskipTests && mvn docker:build"
alias docker-clean="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

alias setDocker='eval $(minikube docker-env)'
alias unsetDocker='eval $(env | grep DOCKER | cut -d'=' -f1 | xargs -I{} echo "unset {}")'
alias defaultKubectl="kubectl config set-context $(kubectl config view | awk '/current-context/ {print $2}') --namespace=spay-tee-be-dev"
