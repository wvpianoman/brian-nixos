{ ... }:

{
  #---------------------------------------------------------------------  
  # My CORE components        ( TODO LIST).
  #---------------------------------------------------------------------

  imports = [
    
  #  ./modules/iphone/iphone.nix
    ./nix
    ./packages/apple-default.nix
    ./programs
    ./services
    ./system

  ];

}
