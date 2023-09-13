{ config, pkgs, ... }:
let
    home-manager = builtins.fetchTarball {
+    url = "https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz";
+    sha256 = "1ixy1bi21nq0dlfzpn72k1gjdm8aq7h84wvl1ysff7lmqc4gi1jf";
    };
in
{
    imports = [
        (import "${home-manager}/nixos")
    ];

    home-manager.users.brian = {
        # This should be the same value as `system.stateVersion` in
        # your `configuration.nix` file.
        home.stateVersion = "23.05";
    };
}