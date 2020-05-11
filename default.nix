{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib fetchurl fetchzip python38;
  py = import nix/python.nix { python = python38; };
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
  ]) ++ [ (import ./nix/doctestmod.nix pkgs) ];

  stanford-ner = fetchzip {
    url = "https://nlp.stanford.edu/software/stanford-ner-2018-10-16.zip";
    sha256 = "08b2jm7lx6rpg4a736z235m9fcg7y9qb748cai5hicla138r7r49";
    extraPostFetch = ''
      chmod go-w $out
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
        ] ++ (if dev then devDeps else [ ]);

      shellHook = ''
        export STANFORD_MODELS="${stanford-ner}/classifiers";
      '';
    };

  name = "ir-final";

  mkUnzip = { src, name, ... }@attrs:
    stdenv.mkDerivation ({
      buildInputs = with pkgs; [ unzip ];
      phases = [ "installPhase" ];
      installPhase = ''
        mkdir $out
        unzip $src -d $out
      '';
    } // attrs);

in {
  data = mkUnzip {
    name = "${name}-data";
    src = ./raw_data/CORD-19-research-challenge.zip;
  };

  inherit stanford-ner;

  shell = project { dev = true; };
}
