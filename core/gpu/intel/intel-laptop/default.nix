{ ... }: {

  imports = [

    # Configuration for  intel gpu acceleration & tlp

    ./HD-INTEL.nix
    ./laptop-packages

  ];
}
