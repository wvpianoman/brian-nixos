{ config, pkgs, options, lib, ... }:

#---------------------------------------------------------------------
# Tolga Erok
# 17/10/23
# My personal NIXOS KDE configuration 
# 
# ¯\_(ツ)_/¯
#---------------------------------------------------------------------

let
  
  #   Auto HOST chooser based on device product name
  #   Terminal:   cat /sys/devices/virtual/dmi/id/product_name
  #---------------------------------------------------------------------
  importfile = ( if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "Latitude E6540\n" then
      machines/LAPTOPS/Dell-Latitude-E6540/Dell-E6540-configuration.nix

    else if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "MacBookPro9,2\n" then
      machines/LAPTOPS/Apple-MacBookPro-9.2/Apple-configuration.nix

    else if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "82VB\n" then
      machines/LAPTOPS/Lenovo-Slim7/Lenovo-Slim7-configuration.nix

  else

    # Manually symlink host/machine
    # ---------------------------------------------
    /etc/nixos/manual.nix

  );

in

{
  imports = [ 
    
    # call attribute thats declared above
    # ---------------------------------------------
    importfile 

    ./createCustomDirectories-and-profilePictures.nix
  ];
}



