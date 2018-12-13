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
    src = /home/ldlework/src/t3sketch;
    # src = fetchFromGitHub {
      #   owner = "dustinlacewell";
      #   repo = "t3sketch";
      #   rev = "04e314cf2f6707b33d6d3fc32d3e4d3587584113";
      #   sha256 = "191336bjm938zqy84v24rpwa2kj4xrykfzyw9b13fx1h2pxqip7l";
      # };
  };
}




