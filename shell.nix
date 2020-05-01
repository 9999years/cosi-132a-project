{ pkgs ? import <nixpkgs> { }, }:
let attrs = import ./default.nix { inherit pkgs; };
in attrs.shell
