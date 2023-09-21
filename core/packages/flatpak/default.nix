{ pkgs, ... }:

{
  #---------------------------------------------------------------------
  # Enable flatpak
  #---------------------------------------------------------------------

  services.flatpak.enable = true;

  #---------------------------------------------------------------------
  # Configure the flathub remote
  #---------------------------------------------------------------------

  systemd.services.configure-flathub-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    script = ''
      
            
                  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    '';
  };

}

