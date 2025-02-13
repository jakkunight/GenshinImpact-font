{
  description = "A very basic flake to install the HY-";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs";
    };
    hywenhei-extended-font = {
      url = "github:cawa-93/HYWenHei-Extended-Font";
      flake = false;
    };
  };

  outputs = { nixpkgs, hywenhei-extended-font, ... } @ inputs : 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    packages.${system} = {
      default = import ./default.nix { inherit pkgs inputs; };
    };
  };
}
