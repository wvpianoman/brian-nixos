# MODEL:        	Dell Latitude E6540
# MOTHERBOARD:  	Dell Motherboard 0CYT5F A00
# BIOS:         	Dell BIOS A17 12/01/2015
# CPU:          	Intel(R) Core i7-4800MQ CPU @ 2.70GHz
# GPU:          	Intel 4th Gen Core Processor Integrated Graphics Controller
# GPU:          	AMD/ATI Mars XTX [Radeon HD 8790M]
# RAM:          	2x RAM Module 8GB SODIMM DDR3 1600MT/s
# SATA:         	PNY CS900 1TB SSD
# NETWORK:      	Intel Centrino Ultimate-N 6300
# BLUE-TOOTH:
#--------------------------------------------------------------------------------------------------------------------------

{ config, pkgs, ... }:

{
  imports = [

    ../../core
    ../../core/gpu/intel/intel-laptop # INTEL GPU with (Open-GL), HP Eilite-Folio-9470M-HD-Intel-4000
    ./DELL-hardware-configuration.nix

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
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.consoleMode = "auto";
  boot.loader.systemd-boot.enable = true;

  services.devmon.enable = true;
  # services.gvfs.enable = true;
  services.udisks2.enable = true;

   #---------------------------------------------------------------------
  # Switch to most recent kernel available
  #---------------------------------------------------------------------
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #---------------------------------------------------------------------
  # Enable networking & set host name
  #---------------------------------------------------------------------
  networking.hostName = "nixos_dell";
  networking.networkmanager.enable = true;

  #---------------------------------------------------------------------
  # Set your time zone & internationalisation
  # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  #---------------------------------------------------------------------
  time.timeZone = "America/New_York";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

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
  # Configure keymap in X11
  # --------------------------------------------------------------------
  services.xserver = {
    layout = "us";
    xkbVariant = "";
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
  # Enable touchpad support (enabled default in most desktopManager).
  #---------------------------------------------------------------------
  services.xserver.libinput.enable = true;

  #---------------------------------------------------------------------
  # Define a user account. Don't forget to set a password with ‘passwd’.
  #---------------------------------------------------------------------
  users.users.brian = {
    isNormalUser = true;
    description = "Brian Francisco";

    homeMode = "0755"; # <-----  Copy from here
    uid = 1000; # Replace with your specific UID
    extraGroups = [
      "adbusers"
      "audio"
      "corectrl"
      "disk"
      "input"
      "lp"
      "mongodb"
      "mysql"
      "network"
      "networkmanager"
      "postgres"
      "power"
      "scanner"
      "sound"
      "systemd-journal"
      "users"
      "video"
      "wheel"
    ];
    packages = [ pkgs.home-manager ]; # <-----  To here

  };

  #---------------------------------------------------------------------
  # Enable automatic login for the user.
  #---------------------------------------------------------------------
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "brian";

  #---------------------------------------------------------------------
  # Allow unfree packages
  #---------------------------------------------------------------------
  nixpkgs.config.allowUnfree = true;
  environment.sessionVariables.NIXPKGS_ALLOW_UNFREE = "1";

  #---------------------------------------------------------------------
  # Enable the OpenSSH daemon.
  #---------------------------------------------------------------------
  services.openssh.enable = true;

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

  #---------------------------------------------------------------------
  # Enable memory compression for faster processing and less SSD usage
  #---------------------------------------------------------------------

  zramSwap.enable = true;
}
