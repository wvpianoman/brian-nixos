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
    # ../../../core/system-tweaks/kernel-upgrades/latest-standard.nix    # Latest default NixOS kernel
    ../../../core/system-tweaks/kernel-upgrades/xanmod.nix             # Xanmod kernel
    # ../../../core/system-tweaks/kernel-upgrades/zen.nix                # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/system-tweaks/kernel-tweaks/8GB-SYSTEM/8GB-SYSTEM.nix      # Kernel tweak for 8GB
    ../../../core/system-tweaks/storage-tweaks/SSD/SSD-tweak.nix      # SSD read & write tweaks
    ../../../core/system-tweaks/zram/zram-8GB-SYSTEM.nix          # Zram tweak for 8GB

    # Main Core
    #---------------------------------------------
    ../../../core/apple-default.nix
    ../../../core/gpu/intel/intel-laptop

    ../../../user
    ./Apple-hardware-configuration.nix
    ./boot

  ];

  #---------------------------------------------------------------------
  # Enable networking & set host name
  #---------------------------------------------------------------------
  networking.hostName = "MacBook-Pro";

  #---------------------------------------------------------------------
  #   Automatic system upgrades, automatically reboot after an upgrade if
  #   necessary
  #---------------------------------------------------------------------
  # system.autoUpgrade.allowReboot = true;  # Very annoying .
  system.autoUpgrade.enable = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "23.05"; # Did you read the comment?
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

}
