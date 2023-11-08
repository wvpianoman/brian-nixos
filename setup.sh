#!/bin/sh

# This is what I use after a fresh install of nixOS to install git and 
# pull down my repository from github.  You will notice that I make a backup
# of my original configuration.nix in my /etc/nixos directory.

# change to your home directory
cd $HOME

# install git for the repo access
nix-env -iA nixos.git

# clone the repo
git clone https://github.com/wvpianoman/current-project.git

# change to the directory the repo cloned into
cd current-project

# create a backup copy of your nix config files
sudo cp /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak

# copy the files downloaded into /etc/nixos directory
sudo rsync -av --exclude='.git' ./* /etc/nixos

# set ownership and permissions
sudo chown -R $(whoami):$(id -gn) /etc/nixos
sudo chmod -R 777 /etc/nixos

#allow insecure packages
export NIXPKGS_ALLOW_INSECURE=1

ECHO "IMPORTANT!!!  Please Read This Important Message !!!TNATROPMI"

ECHO " # You need to edit the hardware-configuration contained in the
# machines folder that you want to use.
#
# Make sure that you only use the device type and fstype for each 
# filesystem
#
# for example:     for the ROOT partition, you may see   
#
# fileSystems."/" =
#    { device = "/dev/disk/by-uuid/ebbd8291-07b4-4110-99f9-cc0e5e86d249";
#      fsType = "ext4";
#
# in the original hardware-configuration.nix.  Replace ONLY 
#
# device = "/dev/disk/by-uuid/ebbd8291-07b4-4110-99f9-cc0e5e86d249";
#      fsType = "etx4";
#
# in the ROOT filesystem definition in the hardware-configuration 
# you are editing.  
#
# You will do the same thing for BOOT and SWAP (if you are using a swap partition)
#
# after you finish editing the file, run part2.sh"
