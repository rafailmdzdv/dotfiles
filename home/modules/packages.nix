{ pkgs, flakes, ... }:
{
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

    flakes.zen-browser
    telegram-desktop

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
  ];
}
