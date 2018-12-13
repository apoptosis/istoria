with import <nixpkgs> {};

with import ./deps.nix;


mkShell {
  buildInputs = [ frobtabs t3sketch ];
}

