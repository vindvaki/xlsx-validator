/*
some_program/default.nix
nix-build -E 'with import <nixpkgs> { }; callPackage ./default.nix { }'
*/

{ lib
, stdenv
, fetchFromGitHub
, fetchNuGet
, buildDotnetPackage
, dotnetPackages
, pkg-config
, callPackage
}:
let
  openxml = callPackage ./nix/openxml.nix {};
in
# https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/dotnet/build-dotnet-package/default.nix
buildDotnetPackage rec {
  pname = "xlsx-validator";
  baseName = pname; # workaround for "called without baseName"
  version = "1.0";
  src = ./XlsxValidator;
  projectFile = ["./XlsxValidator.csproj"];


  # we patch in the openxml ref by hand,
  # nix doesn't appear to do depencencies yet
  preBuild = ''
   set -xe
   cp -r ${openxml}/lib ./lib
   ls
   ls ./lib/dotnet/DocumentFormat.OpenXml
  '';
  nativeBuildInputs = [
    pkg-config
  ];
  meta = {
    homepage = "some_homepage";
    description = "some_description";
    license = lib.licenses.mit;
  };
}
