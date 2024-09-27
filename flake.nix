{
  description = "Dev env for lagrange compilation";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { ... } @ args: with args;
    flake-utils.lib.eachDefaultSystem (system:
      let

        pkgs = import nixpkgs {
          inherit system;
          overlays = [ ];
        };

        shells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              bazel_6
              nix
              gdb
              git
            ];
          };
        };
      in
      {
        devShells = shells;
        devShell = shells.default;
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
