{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib python38;
  py = import nix/python.nix { python = python38; };
  pypkgs = py.pkgs;

  # Development dependencies, for linting etc.
  devDeps = with pypkgs; [
    mypy # type checking
    black # code formatting
    pylint # general linting
    jedi # completion
    ptpython # repl
    pytest # unit tests
    # rope # ???
    pydocstyle # docstring style
    coverage # unit test coverage
  ];

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
    };

  name = "ir-final";
in {
  data = stdenv.mkDerivation {
    name = "${name}-data";
    buildInputs = with pkgs; [ unzip ];
    src = ./raw_data/CORD-19-research-challenge.zip;
    dontUnpack = true;
    dontConfigure = true;
    dontBuild = true;
    installPhase = ''
      mkdir $out
      unzip $src -d $out
    '';
    dontFixup = true;
  };

  shell = project { dev = true; };
}
