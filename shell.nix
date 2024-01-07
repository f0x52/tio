{pkgs ? import <nixpkgs> {}}:

let
	tio = pkgs.callPackage ./default.nix {};
in pkgs.mkShell {
	buildInputs = [ tio ];
}
