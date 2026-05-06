{ pkgs, ... }:

{
  programs = {
    foot = {
      enable = true;
      settings = {
        main = {
          shell = "${pkgs.fish}/bin/fish";
        };
      };
    };

    tmux = {
      enable = true;
      extraConfig = ''
        set -g default-shell ${pkgs.fish}/bin/fish
      '';
    };

    fish = {
      enable = true;
    };
  };
}
