{ pkgs, ...}:
{
	# Basic setup to enable Steam, Gamemode and Gamescope (with HDR)
	programs.gamemode = {
		enable = true;
		enableRenice = true;
	};
	#programs.gamescope = {
  	#	enable = true;
  	#	capSysNice = true;
	#};
	jovian.steam = {
		enable = true;
	};
	programs.steam = {
		enable = true;
		protontricks.enable = true;
		extraPackages = with pkgs; [
			gamescope
			bluez
			gamemode
			mangohud # Installed just for Steam, configured in the home-manager module.
		];
	};
	jovian.steamos.enableBluetoothConfig = true;
	environment.systemPackages = with pkgs; [ 
		gamescope-wsi
	];
}
