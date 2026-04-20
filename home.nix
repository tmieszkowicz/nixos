{ pkgs, ... }:

{
  imports = [
    ./programs/discord.nix
    ./programs/git.nix
    ./programs/librewolf.nix
    ./programs/netflix.nix
    ./programs/obsidian.nix
    ./programs/spotify.nix
    ./programs/zed-editor.nix
    ./programs/mpv.nix
    ./programs/ssh.nix
    ./programs/libreoffice.nix
  ];

  home.username = "wiqht";
  home.homeDirectory = "/home/wiqht";

  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style
  ];

  home.stateVersion = "25.11";
}
