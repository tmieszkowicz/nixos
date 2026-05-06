{ pkgs, ... }:

{
  imports = [
    ./modules/home/discord.nix
    ./modules/home/git.nix
    ./modules/home/librewolf.nix
    ./modules/home/netflix.nix
    ./modules/home/obsidian.nix
    ./modules/home/spotify.nix
    ./modules/home/zed-editor.nix
    ./modules/home/mpv.nix
    ./modules/home/ssh.nix
    ./modules/home/libreoffice.nix
    ./modules/home/terminal.nix
  ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style
  ];

  home.stateVersion = "25.11";
}
