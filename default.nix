{ stdenvNoCC, git, hugo, just }:

stdenvNoCC.mkDerivation {
  name = "ocf-decal-web";
  src = ./.;

  nativeBuildInputs = [
    hugo
  ];

  buildPhase = ''
    hugo
  '';

  installPhase = ''
    mv public $out
  '';
}
