#!/usr/bin/env bash

# Create a GPT partition table.
parted /dev/nvme0n1 -- mklabel gpt

# Create 1GiB EFI boot partition
parted /dev/nvme0n1 -- mkpart ESP fat32 1MiB 1GiB
parted /dev/nvme0n1 -- set 1 esp on

# Create NixOS root partition
parted /dev/nvme0n1 -- mkpart primary 1GiB -64GiB

# Leave 64GiB at the end of the drive for other use
parted /dev/nvme0n1 -- mkpart primary -64GiB 100%

# Format the EFI boot partition
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.f2fs /dev/nvme0n1p3  # Format the NixOS root partition

# Encrypt the NixOS root partition with LUKS
cryptsetup luksFormat /dev/nvme0n1p3

# Open the encrypted NixOS root partition
cryptsetup luksOpen /dev/nvme0n1p3 nixos

# Format the LUKS device with a Btrfs filesystem
# mkfs.btrfs -L nixos /dev/mapper/nixos

# Format the LUKS device with a f2fs filesystem
mkfs.f2fs -L nixos /dev/mapper/nixos

# Mount the root filesystem
mount /dev/disk/by-label/nixos /mnt

# Create a boot directory and mount the EFI boot partition
mkdir /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot

# Create a symlink to the NixOS configuration
sudo ln -s /etc/nixos/machines\LAPTOPS\Lenovo-Slim7/Lenovo-Slim7-configuration.nix /etc/nixos/configuration.nix

# Now, proceed with NixOS installation
sudo nixos-install --root /mnt --show-trace

# Generate NixOS configuration for your system
sudo nixos-rebuild switch --upgrade

# Create the ~/.config directory for "brian"
mkdir -p /home/brian/.config

# Create a symlink for Home Manager for "brian"
ln -s /home/brian/brian_home_manager_config.nix /home/brian/.config/home-manager

# Add Home Manager channel
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

# Update Nix channels
nix-channel --update

# Install Home Manager for "brian"
nix-shell '<home-manager>' -A install