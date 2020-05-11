{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib fetchurl fetchzip unzip python38;
  # `py` is the Python distribution.
  # `nix/python.nix` contains overrides for several packages to update/fix them
  # for Python 3.8.
  py = import nix/python.nix { python = python38; };
  # `pypkgs` is the set of python packages.
  pypkgs = py.pkgs;

  # Development dependencies, for linting etc.
  devDeps = (with pypkgs; [
    mypy # type checking
    black # code formatting
    pylint # general linting
    jedi # completion
    ptpython # repl
    pytest # unit tests
    rope # refactoring library used by lang servers
    pydocstyle # docstring style
    coverage # unit test coverage
    (import ./nix/doctestmod.nix pkgs) # doctesting individual files
  ]);

  stanford-ner = stdenv.mkDerivation rec {
    name = "stanford-ner";
    version = "3.9.2";

    src = fetchzip {
      url = "https://nlp.stanford.edu/software/${name}-2018-10-16.zip";
      sha256 = "08b2jm7lx6rpg4a736z235m9fcg7y9qb748cai5hicla138r7r49";
      extraPostFetch = ''
        chmod go-w $out
      '';
    };

    buildInputs = with pkgs; [ unzip ];

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
  };

  nltk-data = stdenv.mkDerivation rec {
    name = "nltk-data-tokenizers-punkt";
    version = "0.0.0";
    src = fetchzip {
      url =
        "https://raw.githubusercontent.com/nltk/nltk_data/gh-pages/packages/tokenizers/punkt.zip";
      sha256 = "113cv87dj5ml7g8pjm7psk4q1hrf0zqpmc945lmpdz91vp2wn1nc";
      extraPostFetch = ''
        chmod go-w $out
      '';
    };
    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out/tokenizers/
      cp -r $src $out/tokenizers/punkt
    '';
  };

  project = { dev ? false, }:
    stdenv.mkDerivation {
      inherit name;
      version = "0.0.0";
      src = if lib.inNixShell then null else ./.;

      buildInputs = with pypkgs;
        [
          nltk
          flask
          elasticsearch
          elasticsearch-dsl

          # my deps
          attrs
          cached-property
        ] ++ [ nltk-data ] ++ (if dev then devDeps else [ ]);

      STANFORD_MODELS = "${stanford-ner}/classifiers";
      NLTK_DATA = "${nltk-data}";
    };

  name = "ir-final";

in {
  data = stdenv.mkDerivation {
    name = "${name}-data";
    src = ./raw_data/CORD-19-research-challenge.zip;
    buildInputs = with pkgs; [ unzip ];
    phases = [ "installPhase" ];
    installPhase = ''
      unzip $src -d $out
    '';
  };

  inherit stanford-ner;

  shell = project { dev = true; };
}
