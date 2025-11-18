{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs;[ rPackages.readxl R typst quarto ];
}
