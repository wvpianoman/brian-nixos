{ config, desktop, pkgs, lib, username, ... }:

{
  #---------------------------------------------------------------------
  # Systemd tmpfiles rules for system directories
  #---------------------------------------------------------------------
  systemd = {
    tmpfiles.rules = [
      "D! /tmp 1777 root root 0"
      "r! /tmp/**/*"
      "D! /var/tmp 1777 root root 0"
      "d /var/spool/samba 1777 root root -"
    ];
  };


}
