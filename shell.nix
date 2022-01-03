{ sources ? import ./nix/sources.nix
, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs {}
}:

pkgs.mkShell {
  packages = with pkgs; [
    niv

    gnat gprbuild glibc.static
  ];
}
