{ sources ? import ./sources.nix
, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs {}
}:

{
  adahello = pkgs.callPackage ./build.nix {};
}
