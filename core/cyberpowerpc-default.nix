{ ... }:

{
  #---------------------------------------------------------------------  
  # My CORE components        ( TODO LIST).
  #---------------------------------------------------------------------

  imports = [
    
    ./nix
    ./packages/cyberpowerpc-default.nix
    ./programs
    ./services
    ./system

  ];

}
