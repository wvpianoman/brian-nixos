# MODEL:      	Apple MacBookPro9,2
# BIOS:       	Apple BIOS 226.0.0.0.0 04/16/2019
# MOTHERBOARD:	Apple Motherboard Mac-6F01561E16C75D06
# CPU:        	Intel i5-3210M (4) @ 3.100GHz
# GPU:        	Intel 3rd Gen Core processor Graphics Controller
# RAM:        	RAM Module(s) 8GB SODIMM
# HARD DRIVE: 	KINGSTON SKC400S37256G 256GB SSD
# NETWORK:    	Edimax EW-7811Un 802.11n Wireless Adapter [Realtek RTL8188CUS]
# BLUETOOTH:  	Apple Bluetooth USB Host Controller
#---------------------------------------------------------------------

{ config, desktop, pkgs, inputs, lib, username, ... }:

{

  #---------------------------------------------------------------------
  # Import snippet files
  #---------------------------------------------------------------------
  imports = [
    ./core
    ./core/gpu
    ./hardware-configuration.nix
  ];

  # --------------------------------------------------------------------
  # Permit Insecure Packages
  # --------------------------------------------------------------------
  nixpkgs.config.permittedInsecurePackages =
    [ "openssl-1.1.1u" "openssl-1.1.1v" "electron-12.2.3" ];

  #---------------------------------------------------------------------
  # Bootloader and System Settings
  #---------------------------------------------------------------------
  # boot.loader.grub.enable = true;
  # boot.loader.grub.device = "/dev/sda";
  # boot.loader.grub.useOSProber = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  #---------------------------------------------------------------------
  # Switch to most recent kernel available
  #---------------------------------------------------------------------
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #---------------------------------------------------------------------
  # Enable networking & set host name
  #---------------------------------------------------------------------
  networking.networkmanager.enable = true;
  networking.hostName = "discordia";

  #---------------------------------------------------------------------
  # Set your time zone & internationalisation
  # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  #---------------------------------------------------------------------
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";

  # --------------------------------------------------------------------
  # Enable the X11 windowing system.
  # --------------------------------------------------------------------
  services.xserver.enable = true;

  # --------------------------------------------------------------------
  # Enable the KDE Plasma Desktop Environment.
  # --------------------------------------------------------------------
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;

  # --------------------------------------------------------------------
  # Set the keyboard layout.
  # --------------------------------------------------------------------
  services.xserver.layout = "us";
  console.useXkbConfig = true;
  };

  #---------------------------------------------------------------------
  # Enable CUPS to print documents.
  #---------------------------------------------------------------------
  services.printing.enable = true;

  #---------------------------------------------------------------------
  # Audio
  #---------------------------------------------------------------------
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  sound.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  #---------------------------------------------------------------------
  # Allow unfree packages
  #---------------------------------------------------------------------
  nixpkgs.config.allowUnfree = true;
  environment.sessionVariables.NIXPKGS_ALLOW_UNFREE = "1";

  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";

#  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
#  systemd.services."getty@tty1".enable = false;
#  systemd.services."autovt@tty1".enable = false;

  #---------------------------------------------------------------------
  # Enable touchpad support (enabled default in most desktopManager).
  #---------------------------------------------------------------------
  services.xserver.libinput.enable = true;

  #---------------------------------------------------------------------
  # User Configuration
  #---------------------------------------------------------------------

  users.users.brian = {
    homeMode = "0755";
    isNormalUser = true;
    description = "Brian Francisco";
    uid = 1000;
    extraGroups = [
      "adbusers"
      "audio"
      "corectrl"
      "disk"
      "docker"
      "input"
      "libvirtd"
      "lp"
      "mongodb"
      "mysql"
      "network"
      "networkmanager"
      "postgres"
      "power"
      "samba"
      "scanner"
      "smb"
      "sound"
      "systemd-journal"
      "udev"
      "users"
      "video"
      "wheel"
      ];

      packages = [ pkgs.home-manager ];

  #---------------------------------------------------------------------
  # Enable the OpenSSH daemon.
  #---------------------------------------------------------------------
  services.openssh.enable = true;

    # Create new password =>    mkpasswd -m sha-512
    hashedPassword =
      "$6$yn6swk2CdH.7MJu/$GtdPxLNz0kyNmDXZ7FsCNVKvgd16Lk3xxp5AGxzq/ojyM6uderrA5SSTYz4Y8cvu97BHi7mCg6pB8zfhlUjHd.";

    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOvVHo9LMvIwrgm1Go89hsQy4tMpE5dsftxdJuqdrf99 kingtolga@gmail.com"
    ];

    # Generate an SSH Key Pair:                 ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    # Locate Your Public Key:                   usually ~/.ssh/id_rsa.pub
    # Create or Edit the authorized_keys File:  cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    # To create a new authorized_keys file:     mkdir -p ~/.ssh
    #                                           cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
    # Set Permissions:                          chmod 700 ~/.ssh
    #                                           chmod 600 ~/.ssh/authorized_keys
    # Copy the Public Key Entry:                ssh-rsa bla bla bla== your_email@example.com
    #                                           Replace your_email@example.com

  };

  #---------------------------------------------------------------------  
  # Automatic system upgrades, automatically reboot after an upgrade if 
  # necessary
  #---------------------------------------------------------------------

  # system.autoUpgrade.allowReboot = true;  # Very annoying .
  system.autoUpgrade.enable = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "23.05";
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

  #---------------------------------------------------------------------
  # Enable zram swap
  #---------------------------------------------------------------------
  zramSwap.enable = true;
}
