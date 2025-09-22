{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [ llvmPackages.bintools cargo rustc openssl pkg-config ];
  OPENSSL_STATIC = "1";
}
