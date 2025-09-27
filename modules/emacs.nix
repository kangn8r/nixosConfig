{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    tetex
    ispell
    libtool
    gnumake
    cmake
    emacs
    fd
    clang

  ];

}
