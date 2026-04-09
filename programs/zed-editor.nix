{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "html"
      "nix"
    ];

    userSettings = {
      vim_mode = true;
      format_on_save = "on";
      autosave = {
        after_delay = { milliseconds = 1000; };
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
  };
}
