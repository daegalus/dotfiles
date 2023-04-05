#!/usr/bin/env zsh
# Key bindings for terminal.

bindkey "^[[3~" delete-char

zle -N kube-toggle
bindkey '^]' kube-toggle