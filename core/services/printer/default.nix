{ config, lib, pkgs, ... }:
with lib;

let
  extraBackends = [ pkgs.epkowa ];

  #---------------------------------------------------------------------
  #   Printers and printer drivers (To suit my HP LaserJet 600 M601)
  #---------------------------------------------------------------------
  printerDrivers = [

    #
    # Use in terminal  
    # $ NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup'

    #   pkgs.brgenml1cupswrapper        # Generic drivers for more Brother printers
    #   pkgs.brgenml1lpr                # Generic drivers for more Brother printers
    #   pkgs.brlaser                    # Drivers for some Brother printers
    #   pkgs.ghostscript             # PostScript interpreter (mainline version)
    #   pkgs.splix                   # CUPS drivers for SPL (Samsung Printer Language) printers
    # pkgs.cups-brother
    # pkgs.drv_cups_ps
    # pkgs.drv_generic_pcl
    pkgs.cups # A standards-based printing system for UNIX
    pkgs.cups-filters # Backends, filters, and other software that was once part of the core CUPS distribution but is no longer maintained by Apple Inc
    pkgs.cups-pdf-to-pdf # A CUPS backend that turns print jobs into searchable PDF files
    pkgs.foomatic-db # OpenPrinting printer support database (free content)
    pkgs.foomatic-db-engine # OpenPrinting printer support database engine
    pkgs.foomatic-db-nonfree # OpenPrinting printer support database (unfree content)
    pkgs.foomatic-db-ppds # OpenPrinting ppd files
    pkgs.foomatic-db-ppds-withNonfreeDb # OpenPrinting ppd files
    pkgs.gutenprint # Drivers for many different printers from many different vendors
    pkgs.gutenprintBin # Additional, binary-only drivers for some printers
    pkgs.hplip # Drivers for HP printers
    pkgs.hplipWithPlugin # Drivers for HP printers, with the proprietary plugin.
    pkgs.system-config-printer

  ];

in {

  #---------------------------------------------------------------------
  #   Scanner and printing drivers
  #---------------------------------------------------------------------
  hardware.sane.enable = true;
  hardware.sane.extraBackends = extraBackends;
  services.printing.drivers = printerDrivers;

  #---------------------------------------------------------------------
  #   Enable CUPS to print documents.
  #---------------------------------------------------------------------
  services.printing.enable = true;

}
