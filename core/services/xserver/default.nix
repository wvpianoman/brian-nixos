{ config, lib, ... }:

{

  #---------------------------------------------------------------------
  # Enable the X11 windowing system && KDE Plasma Desktop Environment.
  #---------------------------------------------------------------------

  imports = [

    # Choose DE, still under review

    # ./budgie/budgie.nix
    # ./cinnamon/cinnamon.nix
    # ./enlightenment/enlightenment.nix
    # ./gnome/gnome.nix
    # ./hyperland/hyperland.nix
    # ./i3/i3.nix
    # ./kde/kde.nix
    # ./sway/sway.nix
    # ./xfce/xfce.nix

  ];

  # Old notes to self
  #---------------------------------------------------------------------
  # Enable the KDE Plasma Desktop Environment.
  #---------------------------------------------------------------------
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

}
