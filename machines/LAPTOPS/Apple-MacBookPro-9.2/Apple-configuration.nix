# MODEL:      	Apple MacBookPro9,2
# BIOS:       	Apple BIOS 226.0.0.0.0 04/16/2019
# MOTHERBOARD:	Apple Motherboard Mac-6F01561E16C75D06
# CPU:        	Intel i5-3210M (4) @ 3.100GHz
# GPU:        	Intel 3rd Gen Core processor Graphics Controller
# RAM:        	RAM Module(s) 8GB SODIMM
# HARD DRIVE: 	KINGSTON SKC400S37256G 256GB SSD
# NETWORK:    	Edimax EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
# BLUETOOTH:  	Apple Bluetooth USB Host Controller
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  #---------------------------------------------------------------------
  # Import snippet files
  #---------------------------------------------------------------------
  imports = [

    # Select your kernel
    #---------------------------------------------
    # ../../../core/system-tweaks/kernel-upgrades/latest-standard.nix   # Latest default NixOS kernel
    ../../../core/system-tweaks/kernel-upgrades/xanmod.nix              # Xanmod kernel
    # ../../../core/system-tweaks/kernel-upgrades/zen.nix               # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/system-tweaks/kernel-tweaks/8GB-SYSTEM/8GB-SYSTEM.nix   # Kernel tweak for 8GB
    ../../../core/system-tweaks/storage-tweaks/SSD/SSD-tweak.nix          # SSD read & write tweaks
    ../../../core/system-tweaks/zram/zram-8GB-SYSTEM.nix                  # Zram tweak for 8GB

    # Main Core
    #---------------------------------------------
    ../../../core/apple-default.nix
    ../../../core/boot/efi/efi.nix         # Use EFI Bootloader
    ../../../core/gpu/intel/intel-laptop

    ../../../user
    ./Apple-hardware-configuration.nix
    ./boot

  ];
  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";
  #---------------------------------------------------------------------
  # Enable networking & set host name
  #---------------------------------------------------------------------
  networking.hostName = "MacBook-Pro";
#  networking.networkmanager.enable = true;


  # mkpasswd -m sha-512
  #  hashedPassword =
  #    "$6$yn6swk2CdH.7MJu/$GtdPxLNz0kyNmDXZ7FsCNVKvgd16Lk3xxp5AGxzq/ojyM6uderrA5SSTYz4Y8cvu97BHi7mCg6pB8zfhlUjHd.";

  #  openssh.authorizedKeys.keys = [
  #    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOvVHo9LMvIwrgm1Go89hsQy4tMpE5dsftxdJuqdrf99 kingtolga@gmail.com"
  #  ];

  # Generate an SSH Key Pair:                 ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
  # Locate Your Public Key:                   usually ~/.ssh/id_rsa.pub
  # Create or Edit the authorized_keys File:  cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
  # To create a new authorized_keys file:     mkdir -p ~/.ssh
  #                                           cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
  # Set Permissions:                          chmod 700 ~/.ssh
  #                                           chmod 600 ~/.ssh/authorized_keys
  # Copy the Public Key Entry:                ssh-rsa bla bla bla== your_email@example.com
  #                                           Replace your_email@example.com

  # Enable automatic system upgrades and reboots if necessary
  # system.autoUpgrade.allowReboot = true;

  system.autoUpgrade.enable = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "23.05"; # Did you read the comment?
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

}
