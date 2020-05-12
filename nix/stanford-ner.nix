{ stdenv, fetchzip, unzip, ... }:
stdenv.mkDerivation rec {
  name = "stanford-ner";
  version = "3.9.2";

  src = fetchzip {
    url = "https://nlp.stanford.edu/software/${name}-2018-10-16.zip";
    sha256 = "08b2jm7lx6rpg4a736z235m9fcg7y9qb748cai5hicla138r7r49";
    extraPostFetch = ''
      chmod go-w $out
    '';
  };

  buildInputs = [ unzip ];

  dontConfigure = true;
  forceShare = true; # Don't move doc/ to share/doc/
  buildPhase = ''
    unzip stanford-ner-${version}-javadoc.jar -d doc
    unzip stanford-ner-${version}-sources.jar -d src
  '';

  installPhase = ''
    mkdir -p $out
    cp -r . $out/
  '';
}
