{pkgs ? import <nixpkgs> {}}: with pkgs;
# { lib, stdenv, fetchFromGitHub, meson, ninja, pkg-config, inih, bash-completion }:
stdenv.mkDerivation rec {
  pname = "tio";
  version = "2.7";

  src = nix-gitignore.gitignoreSource [] ./.;

  strictDeps = true;

  buildInputs = [ inih ];

  nativeBuildInputs = [ meson ninja pkg-config bash-completion ];

  meta = with lib; {
    description = "Serial console TTY";
    homepage = "https://tio.github.io/";
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ yana ];
    platforms = platforms.unix;
    mainProgram = "tio";
  };
}
