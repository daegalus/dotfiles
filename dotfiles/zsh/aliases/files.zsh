#!/usr/bin/env zsh
# File Aliases
alias freq='cut -f1 -d" " ~/.histfile | sort | uniq -c | sort -nr | head -n 30'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias ccat="pygmentize -O bg=dark"
alias ll="ls -lah"

# Suffix Aliases
alias -s md=code
alias -s json=code
alias -s {cs,ts,html,css,js}=code
