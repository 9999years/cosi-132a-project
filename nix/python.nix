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
  };
}
