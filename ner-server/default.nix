{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib fetchurl fetchzip javaPackages;
  jdk = pkgs.adoptopenjdk-bin;

  classPath = jars: ".:${lib.concatStringsSep ":" jars}";

  fetchMaven = { groupId, artifactId, version
    , repo ? "https://repo1.maven.org/maven2/", type ? "jar", ... }@attrs:
    fetchurl ({
      url = "${repo}${
          lib.replaceStrings [ "." ] [ "/" ] groupId
        }/${artifactId}/${version}/${artifactId}-${version}.${type}";
    } // (removeAttrs attrs [
      "groupId"
      "artifactId"
      "version"
      "repo"
      "type"
    ]));

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

  allCountries = fetchzip {
    url = "http://download.geonames.org/export/dump/allCountries.zip";
    sha256 = "0r7iwwhw92khynam6bicam0ldpdnyykl3rz31pi57c0j54fklxx8";
  };

  clavin-jar = fetchMaven {
    groupId = "com.bericotech";
    artifactId = "clavin";
    version = "2.1.0";
    sha256 = "1cdcm734vrflv6n9c6zhhp8qjg2yys6kzl2izm8cbj1m4jw216n9";
  };

  clavin-deps = import ./clavin.nix { inherit fetchMaven; };

  geoindex = stdenv.mkDerivation rec {
    name = "geoindex";
    version = "0.0.0";

    src = clavin-jar;
    dontUnpack = true;

    javaBuildInputs = [ clavin-jar ] ++ clavin-deps;

    CLASSPATH = classPath javaBuildInputs;

    dontConfigure = true;
    buildPhase = ''
      ln -s ${allCountries}/allCountries.txt allCountries.txt
      ${jdk}/bin/java com.bericotech.clavin.index.IndexDirectoryBuilder
    '';

    installPhase = ''
      mv IndexDirectory $out
    '';
  };

in rec {
  inherit jackson geoindex clavin-jar;

  bin = stdenv.mkDerivation rec {
    name = "ner-server";
    version = "0.0.0";

    srcs = [
      ./Response.java
      ./NERServer.java
      ./Location.java
      ./ClassifyResponse.java
      ./ClassifyMessage.java
      ./ErrorResponse.java
      ./SetIndexResponse.java
      ./Message.java
      ./SetIndexMessage.java
    ];
    sourceRoot = ".";
    unpackPhase = ''
      for f in $srcs
      do
        cp $f "$(stripHash $f)"
      done
    '';

    buildInputs = with pkgs; [ ] ++ [ jdk makeWrapper ];
    javaBuildInputs =
      [ clavin-jar jackson.core jackson.databind jackson.annotations ]
      ++ clavin-deps;

    CLASSPATH = classPath javaBuildInputs;

    dontConfigure = true;
    buildPhase = ''
      javac *.java
    '';

    installPhase = ''
      mkdir -p $out/bin
      cp *.class $out/bin/
      makeWrapper ${jdk}/bin/java \
        $out/bin/ner-server \
        --prefix CLASSPATH : "$out/bin:$CLASSPATH" \
        --argv0 ner-server \
        --add-flags NERServer

      mkdir -p $out/share/data/
      ln -s ${geoindex} $out/share/data/geoindex
    '';
  };

  shell = bin;
}
