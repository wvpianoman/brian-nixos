# MODEL:      	Gigabyte Technology Co., Ltd. GA-78LMT-USB3 6.0
# BIOS:       	Award BIOS F2 11/25/2014
# MOTHERBOARD:	Gigabyte Technology Co., Ltd. GA-78LMT-USB3 6.0
# CPU:        	AMD FX-8320 Eight-Core Processor @ 3.5GHz
# GPU:        	AMD ATI Radeon HD 8670 / R5 340X / R7 250/350/350X OEM
# GPU:
# RAM:        	RAM Module(s) 16GB DDR3
# HARD DRIVE: 	Samsung	SSD 860 EVO 1TB
# NETWORK:      Realtek RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
# BLUETOOTH:
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  imports = [

    # Select your kernel
    #---------------------------------------------
    # ../../../core/system-tweaks/kernel-upgrades/latest-standard.nix    # Latest default NixOS kernel
    ../../../core/system-tweaks/kernel-upgrades/xanmod.nix               # Xanmod kernel
    # ../../../core/system-tweaks/kernel-upgrades/zen.nix                # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/system-tweaks/storage-tweaks/SSD/SSD-tweak.nix             # SSD read & write tweaks
    ../../../core/system-tweaks/zram/zram-16GB-SYSTEM.nix                    # Zram tweak for 16GB
    ../../../core/system-tweaks/kernel-tweaks/16GB-SYSTEM/16GB-SYSTEM.nix    # Kernel tweak for 16GB

    # Main Core
    #---------------------------------------------
    ../../../core/cyberpowerpc-default.nix
    ../../../core/boot/grub/grub.nix         # Use GRUB Bootloader
    ../../../core/gpu/amd/opengl

    ../../../user
    ./CyberPowerPC-hardware-configuration.nix


  ];
  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";

  networking.hostName = "CyberPowerPC"; # Define your hostname.


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
