{ ... }:
{
  #---------------------------------------------------------------------  
  # Import default.nix from folders below
  #---------------------------------------------------------------------

  imports = [

    ./1-packages
    ./custom-pkgs     # My personal system-wide pkgs
    ./database        # dbeaver, pgmodeler, sqlitebrowser
    ./devlopment
    ./flatpak
    ./openssl
    ./plasma
    ./theme-packages
    ./vscode
    # ./vscodium
    ./web-browsers

  ];
}
