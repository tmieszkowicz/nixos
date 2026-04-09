{ config, pkgs, ... }:
{

  imports = [
    ./programs/discord.nix
    ./programs/git.nix
    ./programs/librewolf.nix
    ./programs/netflix.nix
    ./programs/obsidian.nix
    ./programs/spotify.nix
    ./programs/zed-editor.nix
  ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style
  ];

  home.stateVersion = "25.11";
}
