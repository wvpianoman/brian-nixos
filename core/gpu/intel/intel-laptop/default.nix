{ ... }: {

  imports = [

    # Configuration for  intel gpu acceleration & tlp

    #./cpu-frequency
    #./intel-acceleration.nix
    #./tlp
    ./HD-INTEL.nix
    ./laptop-packages

  ];
}
