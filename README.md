# NIXOS Dotfiles 
## Prerequisites
Add the following option to `/etc/nixos/configuration.nix`:

```nix
nix.settings.experimental-features = [ "nix-command" "flakes" ];
```

Then rebuild your config:

```bash
sudo nixos-rebuild switch
```

## Installation
Clone the project to `~/.config/dotfiles`
```bash
git clone https://github.com/DidZ0/dotfiles ~/.config/dotfiles
```

Replace the hardware config with yours:
```
sudo cp /etc/nixos/hardware-configuration.nix ~/.config/dotfiles/hosts/system/
```

Run system wide build first:
```bash
~/.config/rebuild-system.sh
```

Then build home-manager config
```bash
~/.config/rebuild-users.sh
```

Optionnaly, reboot the machine

