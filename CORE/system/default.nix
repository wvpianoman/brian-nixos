{ ... }:

{

  #---------------------------------------------------------------------
  # System settings
  #---------------------------------------------------------------------

  imports = [

    #./boot-kernel
    ./bluetooth
    ./documentation
    ./env
    ./firewall
    ./fonts
    #./kernel-sysctl # kernel tweaks
    ./network
    ./systemd
    #./theme    # GNOME THEME?
  ];

}
