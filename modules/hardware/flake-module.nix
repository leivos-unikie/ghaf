# Copyright 2024 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
{ inputs, ... }:
{
  flake.nixosModules = {
    laptop.imports = [
      ./definition.nix
      ./x86_64-generic
      ./laptop.nix
      ./common
      { nixpkgs.overlays = [ inputs.ghafpkgs.overlays.default ]; }
    ];
    hw-x86_64-generic.imports = [
      ./definition.nix
      ./x86_64-generic
    ];
  };
}
