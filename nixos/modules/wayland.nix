{ pkgs, ...}:
{
	environment.systemPackages = with pkgs; [
		xwayland
		xwayland-satellite
	];
}
