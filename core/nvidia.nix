{
  hardware.graphics.enable = true;

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
  };
}
