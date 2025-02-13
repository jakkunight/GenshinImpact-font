{ pkgs, inputs, ... }: pkgs.stdenv.mkDerivation {
  name = "GenshinImpact";
  src = inputs.hywenhei-extended-font;
  dontBuild = true;
  installPhase = ''
    mkdir -p $out/GenshinImpact
    cp -r $src/* $out/GenshinImpact
  '';
}
