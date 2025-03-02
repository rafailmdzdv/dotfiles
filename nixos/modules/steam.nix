{ pkgs, ... }:
{
  programs.steam = {
        enable = true;
        gamescopeSession = { enable = true; };
        extraPackages = with pkgs; [
            steam-devices-udev-rules
        ];
  };
}
