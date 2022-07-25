# convenience insta build script
let
  pkgs = import ./pin.nix {};
in
pkgs.callPackage ../default.nix {}
# pkgs.callPackage ./openxml.nix {}
