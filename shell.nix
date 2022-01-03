{ sources ? import ./nix/sources.nix
, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs {}
}:

pkgs.mkShell {
  packages = [ pkgs.gnat pkgs.gprbuild pkgs.glibc.static ];
}
