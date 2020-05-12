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

  stanford-ner = import nix/stanford-ner.nix pkgs;

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

  ner-server = import ./ner-server { inherit pkgs; };

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
        ] ++ [ nltk-data ner-server ] ++ (if dev then devDeps else [ ]);

      shellHook = ''
        ln -s ${ner-server}/bin/ner-server ner-server/ner-server
      '';

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
