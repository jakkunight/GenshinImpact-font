{ pkgs, inputs, ... }: pkgs.stdenv.mkDerivation {
  name = "GenshinImpact";
  src = inputs.hywenhei-extended-font;
  nativeBuildInputs = [
    pkgs.nerd-font-patcher
  ];
  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
    nerd-font-patcher --name "Genshin-Impact" $out/*.ttf -out $out
    rm $out/"HYWenHei Extended.ttf"
  '';
}
