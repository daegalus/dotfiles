#!/usr/bin/env bash

SKIP_HOMEBREW=${SKIP_HOMEBREW:-"false"}

if [[ $SKIP_HOMEBREW != "false" ]]; then
  echo "Skipping Homebrew installation"
  exit 0
fi

brew bundle --file brew/Brewfile.base
brew bundle --file brew/Brewfile.dev
brew bundle --file brew/Brewfile.$HOSTNAME

if [[ $HOSTNAME == "yulian-lx1e"* ]]; then
  brew bundle --file brew/Brewfile.k8s
fi