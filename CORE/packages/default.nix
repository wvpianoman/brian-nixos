{ ... }:
{
  #---------------------------------------------------------------------  
  # Import default.nix from folders below
  #---------------------------------------------------------------------

  imports = [

    ./custom-pkgs     # My personal system-wide pkgs
    ./database        # dbeaver, pgmodeler, sqlitebrowser
    ./devlopment
    ./flatpak
    ./openssl
    ./plasma

    ./packages

    ./theme-packages
    ./utilities
    ./vscode
    # ./vscodium

  ];
}
