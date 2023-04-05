#!/usr/bin/env zsh

# Docker Aliases
alias dpsc="docker rm \$(docker ps -a -q)"
alias dimgc="docker rmi \$(docker images | grep \"^<none>\" | awk '{print $3}')"
alias dps="docker ps"
alias dkr= "docker"
#alias docker="podman"

# Podman Aliases
alias ppsc="podman rm \$(podman ps -a -q)"
alias pimgc="podman rmi \$(podman images | grep \"^<none>\" | awk '{print $3}')"
alias pps="podman ps"
alias pm="podman"
