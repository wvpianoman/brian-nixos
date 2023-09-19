{ config, desktop, pkgs, lib, username, ... }:

{

  config.environment.systemPackages = with pkgs; [ gparted ];

  #---------------------------------------------------------------------
  # Systemd tmpfiles rules for system directories
  #---------------------------------------------------------------------
  systemd = {
    tmpfiles.rules = [
      "D! /tmp 1777 root root 0"
      "D! /var/tmp 1777 root root 0"
      "d /home/brian/Development/NixOSx 0755 brian users - -"
      "d /var/spool/samba 1777 root root -"
      "r! /tmp/**/*"
    ];
  };

  #---------------------------------------------------------------------
  # Systemd tmpfiles rules for user's home directory
  #---------------------------------------------------------------------
  #systemd.user.tmpfiles.rules = lib.optionalString (username == "brian") [
  config.systemd.tmpfiles.rules = [
    "d /home/brian/Development/NixOSx 0755 brian users - -"
    "L+ /home/${username}/Desktop/gparted.desktop - - - - ${pkgs.gparted}/share/applications/gparted.desktop"
    # "d /home/brian/Xcripts 0755 brian users - -"
    # "d /home/brian/Syncthing 0755 brian users - -"
  ];
}
