{ ... }:

#---------------------------------------------------------------------
# Tolga Erok
# 10/6/2023
# My personal NIXOS KDE configuration 
# 
# ¯\_(ツ)_/¯
#---------------------------------------------------------------------

{

  imports = [

    #---------------------------------------------------------------------
    # Laptop: HP-i5-2520M x 4 ProBook 6460b Intel HD Graphics 3000
    #---------------------------------------------------------------------
    # ./machines/HP-i5-ProBook-6460b (FULL-CONFIG)/configuration.nix

    #---------------------------------------------------------------------
    # Laptop: HP-i7-3615QM x 4 EliteBook Folio 9470M Intel HD Graphics 4000
    #---------------------------------------------------------------------
    # ./machines/HP-i7-Folio-9470M (FULL-CONFIG)/configuration.nix
    # ./machines/HP-i7-Folio-9470M/configuration.nix

    #---------------------------------------------------------------------
    # Main: HP-i7-4770 x 8 EliteDesk 800 G1 SFF Nvidia GT-1030
    #---------------------------------------------------------------------
    # ./machines/HP-i7-EliteDesk-800-G1-SFF/EliteDesk-800-G1-configuration.nix

    #---------------------------------------------------------------------
    # Laptop: Sony Vaio VPCEB13FG i3-330M x 2 Intel HD Graphics
    #---------------------------------------------------------------------
    # ./machines/Sony-Vaio-i3-330M (FULL-CONFIG)/configuration.nix
    # ./machines/Sony-Vaio-i3-330M-intel-core/configuration.nix

    #---------------------------------------------------------------------
    # Laptop: Dell Latitude E6540 i7-4800MQ (8)
    #         GPU: Intel 4th Gen Core Processor / AMD ATI Radeon HD 8790M
    #         RAM: 8GiB SODIMM DDR3 Synchronous 1600 MHz
    #---------------------------------------------------------------------
    ./machines/Dell-Latitude-E6540/configuration.nix
  ];

}
