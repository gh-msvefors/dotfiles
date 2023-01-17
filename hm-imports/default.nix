{ config, lib, pkgs, user, ... }:

{
  imports = [
    (import ./neovim.nix)
    (import ./git.nix)
    (import ./zsh.nix)
    (import ./alacritty)
  ];

  home.stateVersion = "22.11";
  home.sessionVariables = {
          EDITOR = "nvim";
          VISUAL = "nvim";
  };
  programs.htop = {
    enable = true;
    settings = {
      hide_userland_threads = true;
      highlight_base_name = true;
      shadow_other_users = true;
      show_program_path = false;
      tree_view = false;
    };
  };

}
