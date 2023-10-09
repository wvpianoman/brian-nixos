{ ... }:

{

  #---------------------------------------------------------------------
  # System settings
  #---------------------------------------------------------------------

  imports = [

    # ./blocker
    # ./kernel-sysctl # kernel tweaks
    # ./theme    # GNOME THEME?
    #./boot-kernel
    ./bluetooth
    ./documentation
    ./env
    ./firewall
    ./fonts
    ./network
    ./systemd

  ];

}
