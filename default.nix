{ pkgs ? import <nixpkgs> { }, }:
let
  inherit (pkgs) stdenv lib fetchurl fetchzip unzip requireFile python38;
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

  corpus-zip = requireFile {
    name = "CORD-19-research-challenge.zip";
    sha256 = "05ykq44nda9wzh2rybfi825xqnx5jrw85jamzp43dsdwjsyccdfh";
    url =
      "https://www.kaggle.com/allen-institute-for-ai/CORD-19-research-challenge";
  };

  corpus = stdenv.mkDerivation {
    name = "${name}-data";
    src = corpus-zip;
    buildInputs = with pkgs; [ unzip ];
    phases = [ "installPhase" ];
    installPhase = ''
      unzip $src -d $out
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

  ner-server = import ./ner-server { inherit pkgs; };

  project = { dev ? false, }:
    stdenv.mkDerivation rec {
      inherit name;
      version = "0.0.0";
      src = ./.;

      buildInputs = with pypkgs;
        [
          nltk
          flask

          # my deps
          attrs
          cached-property
        ] ++ [ nltk-data ner-server.bin ] ++ (with pkgs; [ makeWrapper ])
        ++ (if dev then devDeps else [ ]);

      shellHook = ''
        #
      '';

      buildPhase = ''
        newpypath="$out/${py.sitePackages}:$PYTHONPATH"
        mkdir -p $out/bin
        makeWrapper ${py}/bin/python \
          $out/bin/get-locations \
          --argv0 get-locations \
          --prefix PYTHONPATH : "$PYTHONPATH" \
          --add-flags "-m covid_locations --data $CORPUS --geoindex $GEOINDEX --ner-server $NER_SERVER"

        makeWrapper ${py}/bin/python \
          $out/bin/visualize-locations \
          --argv0 visualize-locations \
          --prefix PYTHONPATH : "$PYTHONPATH" \
          --add-flags "-m covid_visualization --locations $out/share/data/locations.json --templates $out/${py.sitePackages}/covid_visualization/templates"
      '';

      installPhase = ''
        mkdir -p $out/${py.sitePackages}
        cp -r covid_locations $out/${py.sitePackages}/
        cp -r covid_visualization $out/${py.sitePackages}/

        mkdir -p $out/share/data/
        cp locations.json $out/share/data/

        ln -s $NER_SERVER $out/bin/ner-server
        ln -s $GEOINDEX $out/share/data/geoindex
        ln -s $CORPUS $out/share/data/cord-19
      '';

      CORPUS = "${corpus}";
      NER_SERVER = "${ner-server.bin}/bin/ner-server";
      GEOINDEX = "${ner-server.bin}/share/data/geoindex";
      NLTK_DATA = "${nltk-data}";
    };

  name = "ir-final";

in {
  data = corpus;

  bin = project { dev = false; };

  shell = project { dev = true; };
}
