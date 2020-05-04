{ stdenv, fetchurl, ... }:
stdenv.mkDerivation rec {
  name = "doctestmod";
  version = "1.0.0";

  src = fetchurl {
    url =
      "https://raw.githubusercontent.com/Mortal/${name}/9fdf7f66b26b8b0fbca86ce35031b67928b53fa1/${name}";
    sha512 =
      "0jxykgwd46vkcdjh11x83zh2n9ib9lvqa50hb7wbbqq27zakq5hgqibaz7k310y5qs77yiyfkma2zjzylji2glc6yqcdjjzw707fhy6";
  };
  dontUnpack = true;

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/doctestmod
    chmod +x $out/bin/doctestmod
  '';
}
