{ python }:
python.override {
  packageOverrides = self: super: {
    # https://github.com/aio-libs/aiohttp/issues/4525
    aiohttp = super.aiohttp.overridePythonAttrs { doCheck = false; };

    # Use elasticsearch 7.5.1, not 7.1.0.
    elasticsearch = super.elasticsearch.overridePythonAttrs rec {
      pname = "elasticsearch";
      version = "7.5.1";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "1xdgk2lg5pq5svp9zpb00c0z6265kr9bprs0r1xbisca6wbaa31a";
      };
    };

    # Use newer mypy
    mypy = super.mypy.overridePythonAttrs rec {
      pname = "mypy";
      version = "0.770";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "1bm40nx9g1n4nj1309cijnh0ns4qbhym3agyl537nc4vxw3paqla";
      };
    };

    # (For jedi)
    parso = super.parso.overridePythonAttrs rec {
      pname = "parso";
      version = "0.7.0";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "0b7irps2dqmzq41sxbpvxbivhh1x2hwmbqp45bbpd82446p9z3lh";
      };
    };

    # Use newer jedi
    jedi = super.jedi.overridePythonAttrs rec {
      pname = "jedi";
      version = "0.17.0";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "0c1h9x3a9klvk2g288wl328x8xgzw7136k6vs9hkd56b85vcjh6z";
      };
    };

    # (For pylint.)
    astroid = super.astroid.overridePythonAttrs rec {
      pname = "astroid";
      version = "2.4.0";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "15n1b98gaj8k2qma1clfagyg319njjih5f7w6k402ka0l935vyi9";
      };
    };

    # (For pylint.)
    toml = super.toml.overridePythonAttrs rec {
      pname = "toml";
      version = "0.10.0";

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "0p1xww2mzkhqvxkfvmfzm58bbfj812zhdz4rwdjiv94ifz2q37r2";
      };
    };

    # Use newer pylint
    pylint = super.pylint.overridePythonAttrs (old: rec {
      pname = "pylint";
      version = "2.5.0";

      doCheck = false;
      propagatedBuildInputs = old.propagatedBuildInputs ++ [ self.toml ];

      src = super.fetchPypi {
        inherit pname version;
        sha256 = "0i823qd5wk3jwhm33vkq1qdkxjf1h8fdvdrmii1305ls7x7133jq";
      };
    });
  };
}
