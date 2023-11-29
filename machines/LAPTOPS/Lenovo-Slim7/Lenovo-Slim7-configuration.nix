# MODEL:      	Lenovo Slim 7 16IAH7 82VB
# BIOS:       	Lenovo BIOS KMCN09WW 04/26/2022
# MOTHERBOARD:	Lenovo Motherboard LNVNB161216 SDK0T76461 WIN
# CPU:        	Intel 12th Gen Core i7-12700H @ 2.2GHz
# GPU:        	Intel Alder Lake-P Integrated Graphics Controller
# GPU:          Intel DG2 [Arc A370M]
# RAM:        	RAM Module(s) 32GB SODIMM
# HARD DRIVE: 	PNY CS900 1TB SSD
# NETWORK:    	Intel Alder Lake-P PCH CNVi WiFi
# BLUETOOTH:  	
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  imports = [

    # Select your kernel
    #---------------------------------------------
    # ../../../core/modules/system-tweaks/kernel-upgrades/latest-standard.nix    # Latest default NixOS kernel
    # ../../../core/modules/system-tweaks/kernel-upgrades/stable-LTS.nix         # Sometimes older pc's perform better on LTS kernel
    ../../../core/modules/system-tweaks/kernel-upgrades/xanmod.nix              # Xanmod kernel
    # ../../../core/modules/system-tweaks/kernel-upgrades/zen.nix                # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/modules/system-tweaks/storage-tweaks/NVME-tweak.nix    # NVME read & write tweaks
    ../../../core/modules/system-tweaks/zram/zram-32GB-SYSTEM.nix        # Zram tweak for 32GB
    ../../../core/modules/system-tweaks/kernel-tweaks/32GB-SYSTEM.nix    # Kernel tweak for 32GB

    # Main Core
    #---------------------------------------------
    # ../../../core/programs/git/gitfs.nix
    ../../../core
    ../../../core/boot/efi.nix                    # Use EFI Bootloader
    #../../../core/gpu/intel/intel-laptop
    ../../../core/modules
    ./Lenovo-Slim7-hardware-configuration.nix

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

  networking.hostName = "Lenovo-Slim7"; # Define your hostname.

  
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
