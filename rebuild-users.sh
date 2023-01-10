#!/bin/sh
pushd ~/.config/dotfiles
nix build .#homeConfigurations.bomal.activationPackage
./result/activate
popd
