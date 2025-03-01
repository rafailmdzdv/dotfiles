{
  imports = [
    ./modules
  ];

  home.enableNixpkgsReleaseCheck = false;

  home = {
    username = "rafail";
    homeDirectory = "/home/rafail";
    stateVersion = "24.11";
  };
}
