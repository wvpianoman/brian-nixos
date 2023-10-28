# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.

#---------------------------------------------------------------------
# Imports and basic configuration
#---------------------------------------------------------------------
{ config, lib, pkgs, modulesPath, ... }:

with lib;

{
  #---------------------------------------------------------------------
  # Module imports
  #---------------------------------------------------------------------
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  #---------------------------------------------------------------------
  # Boot configuration
  #---------------------------------------------------------------------
  boot = {
    blacklistedKernelModules = lib.mkDefault [ "nouveau" ];
    extraModulePackages = [ ];
    initrd.kernelModules = [ "nvidia" ];

    kernelModules = [

      "kvm-intel"
      "nvidia"
      "tcp_bbr"       # Dynamically optimize how data is sent over a network (not internet), aiming to achieve higher throughput and reduced latency

    ];

    # Enable BBR congestion control algorithm for TCP, , which can lead to improved network throughput and reduced latency.
    kernel.sysctl = {

      "net.ipv4.tcp_congestion_control" = "bbr";

    };
    
    kernelParams = [

      "mitigations=off"
      "quiet"

    ];

    initrd.availableKernelModules = [

      "ahci"        # Enables the Advanced Host Controller Interface (AHCI) driver, typically used for SATA (Serial ATA) controllers.
      "ehci_pci"    # Enables the Enhanced Host Controller Interface (EHCI) driver for PCI-based USB controllers, providing support for USB 2.0.
      "sd_mod"      # Enables the SCSI disk module (sd_mod), which allows the system to recognize and interact with SCSI-based storage devices.
      "sr_mod"      # Loads the SCSI (Small Computer System Interface) CD/DVD-ROM driver, allowing the system to recognize and use optical drives.
      "uas"         # Enables the USB Attached SCSI (UAS) driver, which provides a faster and more efficient way to access USB storage devices.
      "usb_storage" # Enables the USB Mass Storage driver, allowing the system to recognize and use USB storage devices like USB flash drives and external hard drives.
      "usbhid"      # Enables the USB Human Interface Device (HID) driver, which provides support for USB input devices such as keyboards and mice.
      "xhci_pci"    # Enables the eXtensible Host Controller Interface (xHCI) driver for PCI-based USB controllers, providing support for USB 3.0 and later standards.

    ];

    # ---------------------------------------------------------------------
    # Boot - Plymouth theme
    # ---------------------------------------------------------------------
    # plymouth.enable = true;
    # plymouth.theme = "breeze";

  };

  #---------------------------------------------------------------------
  # File system configurations
  #---------------------------------------------------------------------
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/21882665-1b7e-422e-8dd8-607d8233f1a7";
    fsType = "ext4";

    # Optimize SSD
    # ---------------------------------------------
    options = [

      "data=ordered"        # Ensures data ordering, improving file system reliability and performance by writing data to disk in a specific order.
      "defaults"            # Applies the default options for mounting, which usually include common settings for permissions, ownership, and read/write access.
      "discard"             # Enables the TRIM command, which allows the file system to notify the storage device of unused blocks, improving performance and longevity of solid-state drives (SSDs).
      "errors=remount-ro"   # Remounts the file system as read-only (ro) in case of errors to prevent further potential data corruption.
      "nodiratime"          # Disables updating directory access time, improving file system performance by reducing unnecessary writes.
      "relatime"            # Updates the access time of files relative to the modification time, minimizing the performance impact compared to atime
      "noatime"             # Disables updating access times for files, improving file system performance by reducing write operations.

    ];

  };

  #---------------------------------------------------------------------
  # Mounting options for samba
  #---------------------------------------------------------------------
  fileSystems."/mnt/sambashare" =

    {
      device = "//192.168.0.20/LinuxData/HOME/PROFILES/NIXOS-23-05/TOLGA/";
      fsType = "cifs";
      options = let
        automountOpts =
          "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s,x-systemd.requires=network.target";
        uid =
          "1000"; # Replace with your actual user ID, use `id -u <YOUR USERNAME>` to get your user ID
        gid =
          "100"; # Replace with your actual group ID, use `id -g <YOUR USERNAME>` to get your group ID
        vers = "3.1.1";
        cacheOpts = "cache=loose";
        credentialsPath = "/etc/nixos/core/system/network/smb-secrets";
      in [
        "${automountOpts},credentials=${credentialsPath},uid=${uid},gid=${gid},vers=${vers},${cacheOpts}"
      ];

    };

  #---------------------------------------------------------------------
  # Swap device configuration
  #---------------------------------------------------------------------
  swapDevices = [ ];

  #---------------------------------------------------------------------
  # For AMD hardware / chipsets
  #---------------------------------------------------------------------
  # hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  #---------------------------------------------------------------------
  # For Intel hardware / chipsets
  #---------------------------------------------------------------------
  hardware.cpu.intel.updateMicrocode =
    lib.mkDefault config.hardware.enableRedistributableFirmware;

  #---------------------------------------------------------------------
  # Host platform and hardware configurations
  #---------------------------------------------------------------------
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  networking.useDHCP = lib.mkDefault true;

}
