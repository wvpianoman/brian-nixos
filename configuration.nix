{ config, pkgs, options, lib, ... }:

#---------------------------------------------------------------------
# Tolga Erok
# 17/10/23
# My personal NIXOS KDE configuration 
# 
# ¯\_(ツ)_/¯
#---------------------------------------------------------------------

#                                                                                               
#                                                                                               
#  ___      ___                  ____      ____                                                 
#  `MM\     `M'68b              6MMMMb    6MMMMb\                                               
#   MMM\     M Y89             8P    Y8  6M'    `                                               
#   M\MM\    M ___ ____   ___ 6M      Mb MM               ____     ____         ____    _______ 
#   M \MM\   M `MM `MM(   )P' MM      MM YM.             6MMMMb   6MMMMb       6MMMMb  ,MMMMMMM 
#   M  \MM\  M  MM  `MM` ,P   MM      MM  YMMMMb        MM'  `Mb MM'  `Mb     6M'  `Mb dM       
#   M   \MM\ M  MM   `MM,P    MM      MM      `Mb            ,MM       MM     MM    MM MP       
#   M    \MM\M  MM    `MM.    MM      MM       MM           ,MM'      .M9     MM    MM M'       
#   M     \MMM  MM    d`MM.   YM      M9       MM         ,M'      MMMM       MM    MM MMMMMMb  
#   M      \MM  MM   d' `MM.   8b    d8  L    ,M9       ,M'           `Mb 68b YM.  ,M9      `Mb 
#  _M_      \M _MM__d_  _)MM_   YMMMM9   MYMMMM9        MMMMMMMM       MM Y89  YMMMM9        MM 
#                                                                      MM                    MM 
#                                                                MM.  ,M9              MM.  ,M9 
#                                                                 YMMMM9                YMMMM9  


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
    # ./core/services/xserver/cinnamon/cinnamon.nix
    # ./core/services/xserver/gnome/gnome.nix
    # ./core/services/xserver/hyperland/hyperland.nix
    # ./core/services/xserver/sway/sway.nix    
    ./core/services/xserver/kde/kde.nix
    
  ];
}



