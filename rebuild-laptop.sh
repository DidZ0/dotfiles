sudo cp /etc/nixos/hardware-configuration.nix ./hosts/laptop/
sudo nixos-rebuild switch --flake '.#laptop'
