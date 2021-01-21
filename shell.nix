# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};

let
  easy-ps = import (
    pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "aa3e608608232f4a009b5c132ae763fdabfb4aba";
      sha256 = "0y6jikncxs9l2zgngbd1775f1zy5s1hdc5rhkyzsyaalcl5cajk8";
    }
  ) {
    inherit pkgs;
  };

  node_packages = import ./default.nix  { inherit (pkgs) nodejs; };
in
stdenv.mkDerivation {
  name = "purescript-bootstrap-shell";
  buildInputs = with pkgs; [
    easy-ps.purs
    easy-ps.spago
    pkgs.nodePackages.node2nix
    node_packages.bower
    node_packages.purty
  ];
}
