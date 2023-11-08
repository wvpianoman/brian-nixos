{ config, lib, ... }:

{

  #---------------------------------------------------------------------
  # Enable the X11 windowing system && KDE Plasma Desktop Environment.
  #---------------------------------------------------------------------

  imports = [

    # Choose DE, still under review

    # ./cinnamon/cinnamon.nix
    # ./gnome/gnome.nix
    # ./hyperland/hyperland.nix
    # .//sway/sway.nix
    # ./kde/kde.nix
    # ./budgie/budgie.nix
    # ./xfce/xfce.nix
    # ./enlightenment/enlightenment.nix

  ];

  # Old notes to self
  #---------------------------------------------------------------------
  # Enable the KDE Plasma Desktop Environment.
  #---------------------------------------------------------------------
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

}
