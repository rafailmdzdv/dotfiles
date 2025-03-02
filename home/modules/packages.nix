{ pkgs, flakes, ... }:
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    # Terminal emulators
    alacritty
    kitty

    # Terminal utils
    fzf
    fish
    fastfetch
    yadm
    tmux
    btop
    eza
    cava
    ripgrep
    wl-clipboard-x11
    zip
    unzip
    playerctl
    yazi

    waybar
    rofi
    swaylock-fancy
    swaynotificationcenter
    swww
    libnotify
    bluez
    bluetui

    flakes.zen-browser
    telegram-desktop
    steam

    nodejs
    python312Full
    rustup
    rustc

    # LSP
    pyright
    lua-language-server
    typescript-language-server
    nixd
    stylua
    tailwindcss-language-server

    protonup
    gamemode
  ];
  xdg.portal = {
        enable = true;
        extraPortals = with pkgs; [ xdg-desktop-portal ];
        config.common.default = "*";
    };

  home.sessionVariables = {
        STEAM_EXTRA_COMPAT_TOOLS_PATHS = "$\{HOME\}/.steam/root/compatibilitytools.d";
  };
}
