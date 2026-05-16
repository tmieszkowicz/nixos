{ pkgs, ... }:

{
  programs = {
    foot = {
      enable = true;
      settings = {
        main = {
          shell = "${pkgs.zsh}/bin/zsh";
        };
      };
    };

    tmux = {
      enable = true;
      extraConfig = ''
        set -g default-shell ${pkgs.zsh}/bin/zsh
      '';
    };

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
    };

    starship = {
      enable = true;
    };
  };
}
