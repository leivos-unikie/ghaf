# Copyright 2024 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
#
# Modules to be exported from Flake
#
{inputs, ...}: {
  imports = [
    ./disko/flake-module.nix
    ./hardware/flake-module.nix
  ];

  flake.nixosModules = {
    common.imports = [
      ./common
      {ghaf.development.nix-setup.nixpkgs = inputs.nixpkgs;}
    ];
    desktop.imports = [./desktop];
    host.imports = [./host];
    jetpack.imports = [./jetpack];
    jetpack-microvm.imports = [./jetpack-microvm];
    lanzaboote.imports = [./lanzaboote];
    microvm.imports = [./microvm];
    polarfire.imports = [./polarfire];
  };
}
