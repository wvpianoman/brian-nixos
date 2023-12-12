{ config, lib, pkgs, modulesPath, ... }:

#--------------------------------------------------------------------- 
# Default Hardware Configuration for current pc
#--------------------------------------------------------------------- 

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.availableKernelModules = [

      "ahci"                # Enables the Advanced Host Controller Interface (AHCI) driver, typically used for SATA (Serial ATA) controllers.
      "applespi"            # MacBook (Pro) SPI keyboard and touchpad driver
      "ehci_pci"            # Enables the Enhanced Host Controller Interface (EHCI) driver for PCI-based USB controllers, providing support for USB 2.0.
      "firewire_ohci"
      "intel_lpss_pci"      # Intel Low Power Subsystem support in PCI mode
      "mac_hid"             # HID support stuff for Macintosh computers.
      "sd_mod"              # Enables the SCSI disk module (sd_mod), which allows the system to recognize and interact with SCSI-based storage devices.
      "sdhci_pci"           # This selects the PCI Secure Digital Host Controller Interface.
      "spi_pxa2xx_pci"      # PCI glue driver for SPI PXA2xx compatible controllers.
      "spi_pxa2xx_platform" # SPI keyboard / trackpad found on 12" MacBooks (2015 and later) and newer MacBook Pros (late 2016 and later).
      "sr_mod"              # Loads the SCSI (Small Computer System Interface) CD/DVD-ROM driver, allowing the system to recognize and use optical drives.
      "uas"         # Enables the USB Attached SCSI (UAS) driver, which provides a faster and more efficient way to access USB storage devices. 
      "usb_storage"         # Enables the USB Mass Storage driver, allowing the system to recognize and use USB storage devices like USB flash drives and external hard drives.
      "usbcore"
      "usbhid"              # Enables the USB Human Interface Device (HID) driver, which provides support for USB input devices such as keyboards and mice.
      "xhci_pci"            # Enables the eXtensible Host Controller Interface (xHCI) driver for PCI-based USB controllers, providing support for USB 3.0 and later standards.
  ];

  boot.extraModulePackages = [ config.boot.kernelPackages.broadcom_sta ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [
       "wl"
       "kvm-intel"
    "tcp_cubic"     # Cubic: A traditional and widely used congestion control algorithm
    "tcp_reno"      # Reno: Another widely used and stable algorithm
    "tcp_newreno"   # New Reno: An extension of the Reno algorithm with some improvements
    "tcp_bbr"       # BBR: Dynamically optimize how data is sent over a network, aiming for higher throughput and reduced latency
    "tcp_westwood"  # Westwood: Particularly effective in wireless networks
    ];

    # Enable BBR congestion control algorithm for TCP, , which can lead to improved network throughput and reduced latency.

  boot.kernelParams = [

    "intel_pstate=ondemand"
    "mitigations=off"
    "quiet"

  ];

fileSystems."/" =
    { device = "/dev/disk/by-uuid/c59de917-bcb8-4d00-a33e-66c4bccf8030";
      fsType = "ext4";
 #   };


    # Optimize SSD
    options = [

   #   "data=ordered"        # Ensures data ordering, improving file system reliability and performance by writing data to disk in a specific order.
      "defaults"            # Applies the default options for mounting, which usually include common settings for permissions, ownership, and read/write access.
   #   "discard"             # Enables the TRIM command, which allows the file system to notify the storage device of unused blocks, improving performance and longevity of solid-state drives (SSDs).
      "errors=remount-ro"   # Remounts the file system as read-only (ro) in case of errors to prevent further potential data corruption.
      "nodiratime"          # Disables updating directory access time, improving file system performance by reducing unnecessary writes.
      "relatime"            # Updates the access time of files relative to the modification time, minimizing the performance impact compared to atime
   #   "noatime"             # Disables updating access times for files, improving file system performance by reducing write operations.

    ];

    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/665E-7F09";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/dfbc6f73-8f45-45b8-bc97-e506bf5b861d"; }
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
