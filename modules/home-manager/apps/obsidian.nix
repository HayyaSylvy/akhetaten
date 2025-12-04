{
	programs.obsidian = {
		enable = true;
		vaults = {
			"Estudos.nix" = {
				enable = true;
				target = "./Documents/Obsidian/Estudos.nix";	
			};
		};
	};
	stylix.targets.obsidian.vaultNames = [
		"Estudos.nix"
	];
}
