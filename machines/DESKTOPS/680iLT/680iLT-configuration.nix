# MODEL:      	Nvidia snc302eeh Desktop Computer (680iLT)
# BIOS:       	Phoenix Technologies, LTD BIOS 6.00 PG 01/22/2008
# MOTHERBOARD:	Nvidia Motherboard snc302eeh
# CPU:        	Intel Pentium D 3.73GHz (4) @ 3.199GHz
# GPU:        	AMD Turks PRO [Radeon HD 6570/7570/8550 / R5 230]
# RAM:        	RAM Module(s) 8GB DDR3
# HARD DRIVE: 	HGST HTS541010B7E610 1TB
# HARD DRIVE: 	HGST HTS725050A7E630 500GB
# HARD DRIVE: 	WD1600JS-00NCB1 160GB
# NETWORK:
# BLUETOOTH:
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  imports = [

    # Select your kernel
    #---------------------------------------------
    # ../../../core/system-tweaks/kernel-upgrades/latest-standard.nix    # Latest default NixOS kernel
    # ../../../core/system-tweaks/kernel-upgrades/xanmod.nix             # Xanmod kernel
    # ../../../core/system-tweaks/kernel-upgrades/zen.nix                # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/system-tweaks/storage-tweaks/HHD/HHD-tweak.nix           # SSD read & write tweaks
    ../../../core/system-tweaks/zram/zram-8GB-SYSTEM.nix                   # Zram tweak for 16GB
    ../../../core/system-tweaks/kernel-tweaks/8GB-SYSTEM/8GB-SYSTEM.nix    # Kernel tweak for 16GB

    # Main Core
    #---------------------------------------------
    ../../../core680iLT/680iLT.nix
    ../../../core/boot/grub/grub.nix         # Use GRUB Bootloader
    ../../../core/gpu/amd/opengl

    ../../../user
    ./680iLT-hardware-configuration.nix


  ];
  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";

  networking.hostName = "680iLT"; # Define your hostname.


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
