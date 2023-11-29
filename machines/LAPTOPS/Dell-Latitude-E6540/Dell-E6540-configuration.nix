# MODEL:      	Dell Latitude E6540 
# BIOS:       	Dell BIOS A17 12/01/2015
# MOTHERBOARD:	Dell Motherboard 0CYT5F A00
# CPU:        	Intel Core i7-4800MQ CPU @ 2.70GHz
# GPU:        	Intel 4th Gen Core Processor Integrated Graphics Controller
# GPU:          AMD/ATI Mars XTX [Radeon HD 8790M]
# RAM:        	2x RAM Module 8GB SODIMM DDR3 1600MT/s
# HARD DRIVE: 	PNY CS900 1TB SSD
# NETWORK:    	Intel  	Centrino Ultimate-N 6300
# BLUETOOTH:  	
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  imports = [

    # Select your kernel
    #---------------------------------------------
    # ../../../core/modules/system-tweaks/kernel-upgrades/latest-standard.nix   # Latest default NixOS kernel
    # ../../../core/modules/system-tweaks/kernel-upgrades/stable-LTS.nix        # Sometimes older pc's perform better on LTS kernel
    ../../../core/modules/system-tweaks/kernel-upgrades/xanmod.nix             # Xanmod kernel
    # ../../../core/modules/system-tweaks/kernel-upgrades/zen.nix               # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/modules/system-tweaks/storage-tweaks/SSD-tweak.nix   # SSD read & write tweaks
    ../../../core/modules/system-tweaks/zram/zram-16GB-SYSTEM.nix      # Zram tweak for 16GB
    ../../../core/modules/system-tweaks/kernel-tweaks/16GB-SYSTEM.nix  # Kernel tweak for 16GB

    # Main Core
    #---------------------------------------------
    # ../../../core/programs/git/gitfs.nix
    ../../../core
    ../../../core/boot/efi.nix         # Use EFI Bootloader
    ../../../core/gpu/intel/intel-laptop
    ../../../core/modules
    ./Dell-E6540-hardware-configuration.nix 

    # Users && user settings
    # ---------------------------------------------
    ../../../user/brian/brian.nix
    ../../../user/sos/sos.nix
    ../../../user/user-home-settings
    
  ];
  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";
 
  networking.hostName = "Dell-Latitude"; # Define your hostname.

 # -----------------------------------------------------------------
  #   Enable networking
  # -----------------------------------------------------------------
#  networking.networkmanager.enable = true;

 
  #---------------------------------------------------------------------
  #   Automatic system upgrades, automatically reboot after an upgrade if
  #   necessary
  #---------------------------------------------------------------------
  # system.autoUpgrade.allowReboot = true;  # Very annoying .
  system.autoUpgrade.enable = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "23.05";
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

}
