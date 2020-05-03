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
  };
}
