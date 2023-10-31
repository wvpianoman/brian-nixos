#!/bin/sh

# Generate NixOS configuration for your system
sudo nixos-rebuild switch --upgrade

# Create the ~/.config directory for "brian"
mkdir -p /home/brian/.config

# Create a symlink for Home Manager for "brian"
ln -s /home/brian/brian_home_manager_config.nix /home/brian/.config/home-manager

# Add nixos-unstable to install home-manager
sudo nix-channel --add  https://nixos.org/channels/nixos-unstable nixos-unstable

# Add Home Manager channel and ensure other necessary channels are in use
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager

# Update Nix channels
sudo nix-channel --update

# Install Home Manager for "brian"
nix-shell '<home-manager>' -A install