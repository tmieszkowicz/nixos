{ pkgs, ... }:
let
  vencord = pkgs.discord.override { withVencord = true; };
in
{
  programs.discord = {
    enable = true;
    package = vencord;
  };
}
