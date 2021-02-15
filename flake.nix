{
  description = "The planet.nixos.org";

  inputs.nixpkgs = { url = "nixpkgs/nixos-20.09"; };

  outputs =
    { self
    , nixpkgs
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      defaultPackage."${system}" = pkgs.mkShell {
        buildInputs = with pkgs; [ venus entr python3 ];
      };
    };
}
