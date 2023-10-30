#!/usr/bin/env bash

# Tolga Erok 

# Define the target device (change this to match your system)
target_device="/dev/nvme0n1"

# Create a GPT partition table
parted "$target_device" mklabel gpt

# Create a 512 MiB boot partition (ESP - EFI System Partition)
parted "$target_device" mkpart ESP fat32 1MiB 512MiB
parted "$target_device" set 1 esp on

# Create a 16 GiB Swap partition
parted "$target_device" mkpart primary 512MiB 16986MiB
mkfs.linux-swap -L swap "${target_device}p2"

# Create a 200 GiB root partition F2FS
parted "$target_device" mkpart primary 16986MiB 221696MiB
mkfs.f2fs -l root "${target_device}p3"

# Create a home partition with the remaining space formatted as F2FS
parted "$target_device" mkpart primary 221696MiB 100%
mkfs.f2fs -l home "${target_device}p4"

# Mount the NixOS root partition
mount "${target_device}p3" /mnt

# Create a boot directory and mount the ESP partition
mkdir /mnt/boot
mount "${target_device}p1" /mnt/boot

# Create a home directory and mount the home partition
mkdir /mnt/home
mount "${target_device}p4" /mnt/home

# Mount the swap partition
mount "${target_device}p2" /mnt/swap

# Generate a NixOS configuration
sudo nixos-generate-config --root /mnt

# Set user and password
echo "Enter your desired username:"
read username
echo "Enter a password for the user:"
read -s password
echo "Re-enter the password for verification:"
read -s password_verify

# Check if passwords match
if [ "$password" != "$password_verify" ]; then
  echo "Passwords do not match. Please run the script again."
  exit 1
fi

# Create the user
useradd -m -G wheel -s /bin/bash "$username"
echo "$username:$password" | chpasswd

# Configure swap in the NixOS configuration
echo "swapDevices = [ { device = \"/dev/nvme0n1p2\"; } ]" | sudo tee -a /mnt/etc/nixos/configuration.nix

# Install NixOS
sudo nixos-install

# Configure Nix flakes
mkdir -p /mnt/etc/nix
echo "experimental-features = nix-command flakes" | sudo tee /mnt/etc/nix/nix.conf

# Clone a Git repository and set up Home Manager (adjust as needed)
mkdir -p ~/s
cd ~/s
git clone git@github.com/NelsonJeppesen/nix-lifestyle.git

mkdir -p ~/.config
ln -s ~/s/nix-lifestyle/home-manager ~/.config/home-manager

# Add the Home Manager channel and update
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# Activate Home Manager before the final reboot
nix-shell '<home-manager>' -A install

# Reboot the system
sudo reboot