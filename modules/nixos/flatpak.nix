{ lib, ... }: 
{

   services.flatpak = {
        enable = true;
        update.onActivation = true;
        remotes = [ 
          { name = "flathub"; location = "https://flathub.org/repo/flathub.flatpakrepo"; } 
          { name = "flathub-beta"; location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";}
          #{ name = "launcher.moe"; location = "https://gol.launcher.moe/gol.launcher.moe.flatpakrepo"; }
        ];
        packages = [
          "one.ablaze.floorp"
          "com.spotify.Client"
          "md.obsidian.Obsidian"
          "de.haeckerfelix.Fragments"
          "com.usebottles.bottles"
          "org.prismlauncher.PrismLauncher"
        ];
   };

}
