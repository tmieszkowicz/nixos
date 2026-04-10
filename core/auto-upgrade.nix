{
  system.autoUpgrade = {
    enable = true;
    flake = "/etc/nixos";
    flags = [
      "--print-build-logs"
      "--commit-lock-file"
    ];
    dates = "weekly";
  };
}
