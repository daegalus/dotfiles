#!/usr/bin/env bash
brew bundle --file brew/Brewfile.base
brew bundle --file brew/Brewfile.dev
brew bundle --file brew/Brewfile.$HOSTNAME

if [[ $HOSTNAME == "lx1e"* ]]; then
  brew bundle --file brew/Brewfile.k8s
fi