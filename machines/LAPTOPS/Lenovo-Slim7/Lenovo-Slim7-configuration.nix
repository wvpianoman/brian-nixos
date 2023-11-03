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
  # Bootloader & tweaks
  #---------------------------------------------------------------------
#  boot.loader.grub.enable = true;
#  boot.loader.grub.device = "/dev/sda";
#  boot.loader.grub.useOSProber = true;

  # Copies latest Linux kernels for smoother boot.
#  boot.loader.grub.copyKernels = true;

  # Cleans /tmp directory on every boot.
  boot.tmp.cleanOnBoot = true;

  # Enables simultaneous use of processor threads.
  security.allowSimultaneousMultithreading = true;

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
    initrd.systemd.enable = true;
    
  #  plymouth.enable = true;
  #  plymouth.theme = "breeze";
  };

  networking.hostName = "Lenovo-NixOS"; # Define your hostname.

  #---------------------------------------------------------------------
  #   Allow unfree packages
  #---------------------------------------------------------------------
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [

    "openssl-1.1.1u"
    "openssl-1.1.1v"
    "openssl-1.1.1w"
    "electron-12.2.3"
    "zotero-6.0.26"
    "zotero-6.0.27"

  ];

  #---------------------------------------------------------------------
  #   Enable the OpenSSH daemon.
  #---------------------------------------------------------------------
  services.openssh.enable = true;

  # -----------------------------------------------------------------
  #   Enable networking
  # -----------------------------------------------------------------
  networking.networkmanager.enable = true;

  # -----------------------------------------------------------------
  #   Enable the X11 windowing system.
  # -----------------------------------------------------------------
  services.xserver.enable = true;

  # -----------------------------------------------------------------
  #   Enable the KDE Plasma Desktop Environment.
  # -----------------------------------------------------------------
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";

  # -----------------------------------------------------------------
  #   Enable CUPS to print documents.
  # -----------------------------------------------------------------
  services.printing.enable = true;

  # -----------------------------------------------------------------
  #   Enable sound with pipewire.
  # -----------------------------------------------------------------
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

  };

  # -----------------------------------------------------------------
  #   Enable touchpad support (enabled default in most desktopManager).
  # -----------------------------------------------------------------
  services.xserver.libinput.enable = true;

  # -----------------------------------------------------------------
  #   Enable flatpak
  # -----------------------------------------------------------------
  services.flatpak.enable = true;

  environment.systemPackages = with pkgs;
    [
      #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
      #  wget
    ];

  #---------------------------------------------------------------------
  #   Automatic system upgrades, automatically reboot after an upgrade if
  #   necessary
  #---------------------------------------------------------------------
  # system.autoUpgrade.allowReboot = true;  # Very annoying .
  system.autoUpgrade.enable = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "23.05";
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

  services = {
    envfs = {
      enable = true;
    };
  };

}
