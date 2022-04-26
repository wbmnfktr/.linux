#!/usr/bin/env bash 

# we need our SSH keys
# so import or download them to 
# .ssh and check your access rights


# TMP is perfect!
# Is TMP perfect?


# Update all mirrors and check for updates
echo "Updating all mirrors"
sudo pacman -Syyu

# Nost important
# SSH
echo "Installing SSH Server"
sudo pacman -S openssh
sudo systemctl enable sshd.service
sudo systemctl start sshd.service

# Base-devel needed for more advanced setups
echo "Installing base-devel"
sudo pacman -S
  \ base-devel

# Multitools for managing dotfiles and others
echo "Installing git and stow"
sudo pacman -S 
  \ stow

# Installing all other needed DEV tools
# Neovim
echo "Installing DEV Tools"
sudo pacman -S
  \ git
  \ neovim
  \ python-pynvim
  \ nodejs
  \ yarn

# Qutebrowser
echo "Installing Qutebrowser and Adblocker"
sudo pacman -S
  \ qutebrowser
  \ python-adblock

# Libre Office, Thunderbird
echo "Installing Office Suite"
sudo pacman -S
  \ libreoffice-fresh
# Filezilla
echo "Installing FTP/SFTP Client"
sudo pacman -S
  \ filezilla

# Firewall ufw gufw
echo "Installing Firewall"
sudo pacman -S
  \ ufw
  \ gufw
