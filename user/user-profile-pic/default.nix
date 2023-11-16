{ config, pkgs, stdenv, lib, ... }: {


  # -------------------------------------------------------
  # Create custom user profile picture
  # -------------------------------------------------------

  system.activationScripts.setGnomeProfilePicture = ''
    mkdir -p /var/lib/AccountsService/icons
    if [[ ! -h /var/lib/AccountsService/icons/brian ]]; then
      cp /etc/nixos/SETUP/profile-pics/cool-brian-2.png /var/lib/AccountsService/icons/tolga
      cp /etc/nixos/SETUP/profile-pics/smile.jpg /var/lib/AccountsService/icons/SOS
    fi
  '';
}
