/*
get's openxml
*/
{ fetchNuGet,
}:

# https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/dotnet/build-dotnet-package/default.nix
fetchNuGet {
    pname = "DocumentFormat.OpenXml";
    version = "2.8.1";
    sha256 = "08r7farkimmr0r7vjkdmc6a6vdz33smfc2si8zs5kf85c7l9nc67";
    outputFiles = [ "lib/*" ];
    }
