{
  emacs,
  emacsDrv ? emacs,
  lib,
  makeWrapper,
  stdenv,
}:
let
  # Import from lib.
  inherit (lib) makeBinPath;
in
stdenv.mkDerivation rec {
  buildInputs = [
    emacsDrv
  ];
  installPhase = ''
    mkdir -p $out/bin
    install -Dm755 emacsclient.sh $out/bin/emacsclient.sh
    wrapProgram $out/bin/emacsclient.sh --prefix PATH : '${makeBinPath buildInputs}'
  '';
  name = "emacsclient";
  nativeBuildInputs = [
    makeWrapper
  ];
  src = ./emacsclient.sh;
  unpackCmd = ''
    mkdir src
    cp $curSrc src/emacsclient.sh
  '';
}
