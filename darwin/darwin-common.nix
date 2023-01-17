{ pkgs, inputs, ... }:
{



  #environment.systemPackages = [ inputs.agenix.defaultPackage.x86_64-darwin ];

  services.nix-daemon.enable = true;
#
#  programs.zsh.enable = true;
#  programs.git.enable = true;
#
#  system.defaults.dock.autohide = true;
#
#
  homebrew = {
    enable = true;

    # updates homebrew packages on activation,
    # if enabled, can make darwin-rebuild much slower
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
    onActivation.cleanup = "zap";                    # Uninstall not listed packages and casks
    taps = [
      "homebrew/cask-fonts"
    ];
    casks = [
      "intellij-idea"
      "chromium"
      "alacritty"
      "font-fira-code"
    ];
    brews = [
      "age"
    ];
  };

  nix = {
      package = pkgs.nix;
      gc = {                                # Garbage collection
        automatic = true;
        interval.Day = 7;
        options = "--delete-older-than 7d";
      };
      extraOptions = ''
        auto-optimise-store = true
        experimental-features = nix-command flakes
      '';
    };
}
