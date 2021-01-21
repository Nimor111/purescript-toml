# This file has been generated by node2nix 1.8.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {};
in
{
  bower = nodeEnv.buildNodePackage {
    name = "bower";
    packageName = "bower";
    version = "1.8.8";
    src = fetchurl {
      url = "https://registry.npmjs.org/bower/-/bower-1.8.8.tgz";
      sha512 = "1SrJnXnkP9soITHptSO+ahx3QKp3cVzn8poI6ujqc5SeOkg5iqM1pK9H+DSc2OQ8SnO0jC/NG4Ur/UIwy7574A==";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "The browser package manager";
      homepage = http://bower.io/;
      license = "MIT";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
  purty = nodeEnv.buildNodePackage {
    name = "purty";
    packageName = "purty";
    version = "6.2.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/purty/-/purty-6.2.0.tgz";
      sha512 = "JfT8kJHSyxuOFQtRiH2x55SiPxXZsSdedQlZap8JehQ7KzB49B5C9cWwVybtSB36BdADQcxPvtw8D52z4EPnBw==";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "PureScript pretty printer";
      homepage = "https://gitlab.com/joneshf/purty#README";
      license = "BSD-3-Clause";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
}