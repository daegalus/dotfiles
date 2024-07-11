#!/usr/bin/env bash
chmod 0600 ~/.ssh/*.pub
chmod 0600 ~/.ssh/config

ln -sf /home/linuxbrew/.linuxbrew/share/fonts -t ~/.local/share
fc-cache -f > /dev/null