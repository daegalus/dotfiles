#!/usr/bin/env bash
chmod 0600 ~/.ssh/*.pub
chmod 0600 ~/.ssh/config

ln -sf /home/linuxbrew/.linuxbrew/share/fonts -t ~/.local/share
fc-cache -f > /dev/null

echo "Applying 1Password Polkit Action Policy..."
if [ ! -f /etc/polkit-1/actions/com.1password.1Password.policy ]; then
  brew info 1password-gui-linux --cask | grep "polkit" | grep -oP "\`.*\`" | sh
fi