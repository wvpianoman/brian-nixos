{ config, lib, pkgs, modulesPath, ... }:

#--------------------------------------------------------------------- 
# Default Hardware Configuration for current pc
#--------------------------------------------------------------------- 

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules = [

    "ahci"
    "applespi" # MacBook (Pro) SPI keyboard and touchpad driver
    "ehci_pci"
    "firewire_ohci"
    "intel_lpss_pci" # Intel Low Power Subsystem support in PCI mode
    "mac_hid" # HID support stuff for Macintosh computers.
    "sd_mod"
    "sdhci_pci"
    "spi_pxa2xx_pci" # PCI glue driver for SPI PXA2xx compatible controllers.
    "spi_pxa2xx_platform" # SPI keyboard / trackpad found on 12" MacBooks (2015 and later) and newer MacBook Pros (late 2016 and later).
    "sr_mod"
    "usb_storage"
    "usbcore"
    "usbhid"
    "xhci_pci"
  ];

  # systemd.services.fix-suspend = {
  #   script = ''
  #     # Fix macbook 12 suspend issues
  #     echo 0 > /sys/bus/pci/devices/0000:01:00.0/d3cold_allowed
  #   '';
  #   wantedBy = [ "multi-user.target" ];
  # };

  # boot.extraModulePackages = [ ];

  boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [
       "wl"
       "kvm-intel"
       "tcp_bbr"       # Dynamically optimize how data is sent over a network, aiming to achieve higher throughput and reduced latency
    ];

    # Enable BBR congestion control algorithm for TCP, , which can lead to improved network throughput and reduced latency.

  boot.kernel.sysctl = {
      "net.ipv4.tcp_congestion_control" = "bbr";
      };

  boot.kernelParams = [

    "intel_pstate=ondemand"
    "mitigations=off"
 #   "quiet"

  ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/77fa6a4a-ee92-4e89-8996-84f8c157a4bc";
      fsType = "f2fs";


    # Optimize SSD
    options = [

   #   "data=ordered"        # Ensures data ordering, improving file system reliability and performance by writing data to disk in a specific order.
      "defaults"            # Applies the default options for mounting, which usually include common settings for permissions, ownership, and read/write access.
   #   "discard"             # Enables the TRIM command, which allows the file system to notify the storage device of unused blocks, improving performance and longevity of solid-state drives (SSDs).
   #   "errors=remount-ro"   # Remounts the file system as read-only (ro) in case of errors to prevent further potential data corruption.
   #   "nodiratime"          # Disables updating directory access time, improving file system performance by reducing unnecessary writes.
   #   "relatime"            # Updates the access time of files relative to the modification time, minimizing the performance impact compared to atime
      # "noatime"           # Disables updating access times for files, improving file system performance by reducing write operations.

    ];

    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/BA19-3D4C";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/f80435dc-e2d6-428d-baf6-3d3939043e05"; }
    ];

  #---------------------------------------------------------------------
  # For Intel hardware / chipsets
  #---------------------------------------------------------------------

  hardware.cpu.intel.updateMicrocode =
    lib.mkDefault config.hardware.enableRedistributableFirmware;

  #---------------------------------------------------------------------
  # Tell Nix to use appropriate packages and configurations for this 
  # platform if they are not explicitly defined otherwise.
  #---------------------------------------------------------------------

  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

}
