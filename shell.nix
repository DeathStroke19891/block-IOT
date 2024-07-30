{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = [
    pkgs.go
    pkgs.protobuf_27
  ];
 
  shellHook = ''
    export PATH="$PATH:$(${pkgs.go}/bin/go env GOPATH)/bin"
  '';
}
