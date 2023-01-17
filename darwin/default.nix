{ lib, inputs, nixpkgs, home-manager, darwin, ...}:
{



    ghmsvefors = darwin.lib.darwinSystem {
        specialArgs = {
          inherit inputs;
        };
        # you can have multiple darwinConfigurations per flake, one per hostname
        system = "x86_64-darwin"; # "x86_64-darwin" if you're using a pre M1 mac
        modules = [
#            inputs.sops-nix.nixosModule
          ./darwin-common.nix
          ./hosts/ghmsvefors
#          ../modules
          # `home-manager` module
          home-manager.darwinModules.home-manager {

            home-manager.users.msvefors = import ../hm-imports;

          }
        ];
    };
}
