#!/usr/bin/env zsh
# Git Aliases
alias gb="git for-each-ref --sort=-committerdate refs/heads/"
alias gg="git status -s"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glh="gl | head"
alias gls="gl --since '1 day ago' --author yulian@kuncheff.com"
alias glsw="gl -- since '1 day ago' --author yulian@unity3d.com"
alias gr="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
