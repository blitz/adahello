# Statically Linked Ada in Nix

This repository contains an example of building an
[Ada](https://en.wikipedia.org/wiki/Ada_(programming_language)) program
using [GNAT](https://en.wikipedia.org/wiki/GNAT) as a static binary using [Nix](https://nixos.org/).

To try it out, use `nix-build ./nix/release.nix -A adahello`.

See `nix/build.nix` for the interesting part.

## Current Limitations

This example links statically against glibc, which is
[discouraged](https://stackoverflow.com/questions/57476533/why-is-statically-linking-glibc-discouraged). As
of the time of writing, I'm not aware of GNAT supporting
[musl](https://musl.libc.org/) yet.
