{ ... }:

{

  #---------------------------------------------------------------------
  # System settings
  #---------------------------------------------------------------------

  imports = [

    #./boot-kernel
    #./blocker
    ./bluetooth
    ./documentation
    ./env
    ./firewall
    ./fonts
    ./kernel-sysctl # kernel tweaks
    ./network
    ./systemd
    #./theme    # GNOME THEME?
  ];

}
