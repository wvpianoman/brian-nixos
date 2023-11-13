{ ... }:

{
  #---------------------------------------------------------------------  
  # My CORE components        ( TODO LIST).
  #---------------------------------------------------------------------

  imports = [
    
 #   ./modules/iphone/iphone.nix
    ./modules/smart-drv-mon
    ./nix
    ./packages/cyberpowerpc-default.nix
    ./programs
    ./services
    ./system

  ];

}
