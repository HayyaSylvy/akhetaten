{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ladyhayya";
  home.homeDirectory = "/home/ladyhayya";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05";

  # The home.packages option allows you to install Nix packages.
  home.packages = with pkgs; [
     hyfetch
     fastfetch
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  xdg.configFile."hyfetch.json".text = ''
    {
    "preset": "transgender",
    "mode": "rgb",
    "auto_detect_light_dark": true,
    "light_dark": "dark",
    "lightness": 0.65,
    "color_align": {
        "mode": "horizontal"
    },
    "backend": "fastfetch",
    "args": null,
    "distro": null,
    "pride_month_disable": false,
    "custom_ascii_path": null
    }
  '';

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ladyhayya/etc/profile.d/hm-session-vars.sh
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
