{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib fetchurl;
  jdk = pkgs.adoptopenjdk-bin;
  stanford-ner = import ../nix/stanford-ner.nix pkgs;

  fetchMaven = { groupId, artifactId, version, ... }@attrs:
    fetchurl ({
      url = "https://repo1.maven.org/maven2/${
          lib.replaceStrings [ "." ] [ "/" ] groupId
        }/${artifactId}/${version}/${artifactId}-${version}.jar";
    } // (removeAttrs attrs [ "groupId" "artifactId" "version" ]));

  jackson = let
    groupId = "com.fasterxml.jackson.core";
    version = "2.11.0";
  in {
    core = fetchMaven {
      inherit groupId version;
      artifactId = "jackson-core";
      sha256 = "1z9kh6dc714kl7m3lj2h8gy2r3d8z80sgxmy3cg8y27va49xh15m";
    };

    databind = fetchMaven {
      inherit groupId version;
      artifactId = "jackson-databind";
      sha256 = "1lgl8yxwpp266pbd9g06080wivh4yw7c6vvzms37khwglfgjprsl";
    };

    annotations = fetchMaven {
      inherit groupId version;
      artifactId = "jackson-annotations";
      sha256 = "13lyb1452ccagissjhpy4b68c7x9mr59cpb30vmd8sb4rfkgrcdk";
    };
  };

in stdenv.mkDerivation {
  name = "ner-server";
  version = "0.0.0";

  src = ./.;

  buildInputs = with pkgs; [ ] ++ [ jdk stanford-ner makeWrapper ];

  CLASSPATH =
    ".:${jackson.core}:${jackson.databind}:${jackson.annotations}:${stanford-ner}/stanford-ner.jar";

  dontConfigure = true;
  buildPhase = ''
    javac *.java
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp *.class $out/bin/
    makeWrapper ${jdk}/bin/java \
      $out/bin/ner-server \
      --set CLASSPATH "$out/bin:$CLASSPATH" \
      --set STANFORD_MODELS "${stanford-ner}/classifiers" \
      --argv0 ner-server \
      --add-flags NERServer
  '';
}
