{ stdenv, gnat, gprbuild, glibc }:

stdenv.mkDerivation {
  name = "ada-static-hello";

  src = ../ws;

  nativeBuildInputs = [
    gprbuild
    gnat
  ];

  buildInputs = [
    glibc.static
  ];

  dontConfigure = true;

  buildPhase = ''
    runHook preBuild

    gprbuild

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin

    # Only install what we need to run the binary.
    gprinstall --prefix=$out hello.gpr \
      --no-project \
      --no-manifest \
      --mode=usage

    runHook postInstall
  '';
}
