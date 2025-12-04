{ lib, ... }: 
{

   services.flatpak = {
        enable = true;
        update.onActivation = true;
        remotes = [ 
          { name = "flathub"; location = "https://flathub.org/repo/flathub.flatpakrepo"; } 
        ];
        packages = [
          "org.prismlauncher.PrismLauncher"
        ];
   };

}
