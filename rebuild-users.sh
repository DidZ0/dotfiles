#!/bin/sh
pushd ~/.dotfiles
nix build .#homeConfigurations.bomal.activationPackage
./result/activate
popd
