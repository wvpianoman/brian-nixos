# MODEL:      	Lenovo Thinkpad L540
# BIOS:       	Lenovo BIOS
# MOTHERBOARD:	Lenovo Motherboard
# CPU:        	Intel Core i5-4200M (4) CPU @ 3.1GHz
# GPU:        	Intel 4th Gen Core Processor Integrated Graphics Controller
# GPU:
# RAM:        	2x RAM Module 4GB SODIMM DDR3 1600MT/s
# HARD DRIVE: 	SAMSUNG 120GB SSD
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
    ../../../core/modules/system-tweaks/zram/zram-8GB-SYSTEM.nix      # Zram tweak for 8GB
    ../../../core/modules/system-tweaks/kernel-tweaks/8GB-SYSTEM.nix  # Kernel tweak for 8GB

    # Main Core
    #---------------------------------------------
    # ../../../core/programs/git/gitfs.nix
    ../../../core
    ../../../core/boot/grub.nix         # Use grub Bootloader
    ../../../core/gpu/intel/intel-laptop
    ../../../core/modules
    ./Thinkpad-L540-hardware-configuration.nix

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
 
  networking.hostName = "Lenovo-L540"; # Define your hostname.

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
