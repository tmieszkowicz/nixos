{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "html"
      "nix"
      "csharp"
      "ultraviolet-theme"
    ];

    userSettings = {
      theme = "ultraViolet";
      vim_mode = true;
      format_on_save = "on";
      autosave = {
        after_delay = {
          milliseconds = 1000;
        };
      };
      lsp.nix = {
        binary = {
          path_lookup = true;
        };
      };
      languages.Nix.language_servers = [
        "nixd"
        "!nil"
      ];
    };

    userKeymaps = [
      {
        bindings = {
          "ctrl-h" = "workspace::ActivatePaneLeft";
          "ctrl-l" = "workspace::ActivatePaneRight";
          "ctrl-k" = "workspace::ActivatePaneUp";
          "ctrl-j" = "workspace::ActivatePaneDown";
        };
      }
      {
        context = "!Terminal && vim_mode != insert";
        bindings = {
          "tab" = "pane::ActivateNextItem";
          "shift-tab" = "pane::ActivatePreviousItem";
        };
      }
    ];
  };
}
