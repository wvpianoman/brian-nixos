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

    else if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "GA-78LMT-USB3 6.0\n" then
      machines/DESKTOPS/CyberPowerPC/CyberPowerPC-configuration.nix

    else if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "680iLT\n" then
      machines/DESKTOPS/680iLT/680iLT-configuration.nix

    else if builtins.readFile "/sys/devices/virtual/dmi/id/product_name" == "20AUS01H00\n" then
      machines/LAPTOPS/Thinkpad-L540/Thinkpad-L540-configuration.nix

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
    
    # Choose DE, still under review
    # ---------------------------------------------
    # ./core/services/xserver
    # ./core/services/xserver/budgie/budgie.nix
    # ./core/services/xserver/cinnamon/cinnamon.nix
    # ./core/services/xserver/enlightenment/enlightenment.nix
    # ./core/services/xserver/gnome/gnome.nix
    # ./core/services/xserver/hyperland/hyperland.nix
    # ./core/services/xserver/i3/i3.nix
     ./core/services/xserver/kde/kde.nix
    # ./core/services/xserver/sway/sway.nix
    # ./core/services/xserver/xfce/xfce.nix
    
  ];
}
