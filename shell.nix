let
  pkgs = import ./nix/pin.nix {};
in
pkgs.mkShell {
  buildInputs = [pkgs.dotnet-sdk];
}
