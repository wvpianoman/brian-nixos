{ config, pkgs, stdenv, lib, ... }:

#---------------------------------------------------------------------
# Tolga Erok
# 10/6/2023
# My personal NIXOS KDE user configuration 
# ¯\_(ツ)_/¯
#---------------------------------------------------------------------

{
  imports = [

    ../locale/america.nix
    ./SOS/SOS.nix
    ./brian/brian.nix
    ./user-profile-pic
    ./user-home-settings

  ];

}
