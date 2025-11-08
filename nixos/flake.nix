{
  description = "My NixOS 25.05";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {  # ← изменили myhostname на nixos
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}