{ pkgs, inputs, ... }: pkgs.stdenv.mkDerivation {
  name = "GenshinImpact";
  src = inputs.hywenhei-extended-font;
  buildInputs = [
    pkgs.nerd-font-patcher
  ];
  buildPhase = ''
    nerd-font-patcher --name "Genshin-Impact" $src/*.ttf -out .
  '';
  installPhase = ''
    mkdir -p $out/GenshinImpact
    cp -r $src/* $out/GenshinImpact
  '';
}
