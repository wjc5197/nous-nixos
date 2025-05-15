{
  lib,
  makeWrapper,
  polkit_gnome,
  stdenv,
}:
let
  # Import from lib.
  inherit (lib) makeBinPath;
in
stdenv.mkDerivation rec {
  buildInputs = [
    polkit_gnome
  ];
  installPhase = ''
    mkdir -p $out/bin
    install -Dm755 polkit-gnome-agent.sh $out/bin/polkit-gnome-agent.sh
    wrapProgram $out/bin/polkit-gnome-agent.sh --prefix PATH : '${makeBinPath buildInputs}'
  '';
  name = "polkit-gnome-agent";
  nativeBuildInputs = [
    makeWrapper
  ];
  src = ./polkit-gnome-agent.sh;
  unpackCmd = ''
    mkdir src
    cp $curSrc src/polkit-gnome-agent.sh
  '';
}
