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
    # ../../../core/system-tweaks/kernel-upgrades/latest-standard.nix    # Latest default NixOS kernel
    ../../../core/system-tweaks/kernel-upgrades/xanmod.nix             # Xanmod kernel
    # ../../../core/system-tweaks/kernel-upgrades/zen.nix                # Zen kernel

    # Custom System tweaks
    #---------------------------------------------
    ../../../core/system-tweaks/storage-tweaks/SSD/SSD-tweak.nix             # SSD read & write tweaks
    ../../../core/system-tweaks/zram/zram-32GB-SYSTEM.nix                      # Zram tweak for 16GB
    ../../../core/system-tweaks/kernel-tweaks/32GB-SYSTEM/32GB-SYSTEM.nix     # Kernel tweak for 16GB

    # Main Core
    #---------------------------------------------
    ../../../core
    ../../../core/gpu/intel/intel-laptop

    ../../../user
    ./Lenovo-Slim7-hardware-configuration.nix

    
  ];

  #---------------------------------------------------------------------
  # Enable networking & set host name
  #---------------------------------------------------------------------
    networking.hostName = "Lenovo-Slim";

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
