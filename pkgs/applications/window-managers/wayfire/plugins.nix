{ lib, pkgs }:

lib.makeScope pkgs.newScope (self:
  let
    inherit (self) callPackage;
  in {
    firedecor = callPackage ./firedecor.nix { };
    wayfire-plugins-extra = callPackage ./wayfire-plugins-extra.nix { };
    wcm = callPackage ./wcm.nix { };
    wf-shell = callPackage ./wf-shell.nix { };
    windecor = callPackage ./windecor.nix { };
  }
)
