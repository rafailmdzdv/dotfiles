{ pkgs, ... }:
{
	fonts.packages = with pkgs; [
		nerd-fonts.jetbrains-mono
		font-awesome
		noto-fonts
		noto-fonts-emoji
	];
}
