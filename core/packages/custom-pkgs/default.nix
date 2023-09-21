{ ... }: {

  imports = [

    #---------------------------------------------------------------------
    # Import custom in-house environment packages::
    #---------------------------------------------------------------------

    # ./trimmgenerations.nix
    
 
    
    ./create-smb-user.nix
    ./git_upload.nix
    ./make-executable.nix
    ./mounter.nix
    ./my-nix-commands.nix
    ./my-pkgs.nix
    ./nixos-archive.nix
    ./unmounter.nix
    ./update.nix

  ];

}
