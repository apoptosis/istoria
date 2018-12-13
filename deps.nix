with import <nixpkgs> {};

{
  frobtabs = stdenv.mkDerivation {
    name = "frobtabs";

    src = fetchFromGitHub {
      owner = "realnc";
      repo = "frobtads";
      rev = "5850ed918c49873d1c11550d386c2f76e9f37fab";
      sha256 = "11l2v184zldaijc89ch5yj29x463xrcwh97s7n68d13f7fbj2a7f";
    };

    buildInputs = [ curl ncurses ];

    nativeBuildInputs = [ autoreconfHook ];
  };

  t3sketch = python2Packages.buildPythonApplication {
    pname = "t3ketch";
    version = "master";
    propagatedBuildInputs = with python2Packages; [ lxml jinja2  ];
    src = fetchFromGitHub {
      owner = "dustinlacewell";
      repo = "t3sketch";
      rev = "2116be5564713f4dbf290054e9ebfba3a591a54e";
      sha256 = "1w24z10incipz4j9yxn900g46m584np675cfvswgacniyh1ww2bs";
    };
  };
}




