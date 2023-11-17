{ ... }:

{
  #---------------------------------------------------------------------  
  # My CORE components        ( TODO LIST).
  #---------------------------------------------------------------------

  imports = [
    
    ./nix
    ./packages/apple-default.nix
    ./programs
    ./services
    ./system

  ];

}
