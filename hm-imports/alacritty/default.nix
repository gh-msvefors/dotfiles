#
# Terminal Emulator
#


{ pkgs, ... }:

{
#  programs.alacritty.enable = true;
#  ".config/alacritty/alacritty.yml".source = ./alacritty.yml;


  programs = {
    alacritty = {
      enable = true;
      settings = builtins.fromJSON (builtins.readFile ./alacritty.json);
    };
  };
}
