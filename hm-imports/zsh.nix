#
# Shell
#

{ config, pkgs, libs, ... }:

{
  programs = {
    zsh = {
      enable = true;
      enableAutosuggestions = true;            # Auto suggest options and highlights syntax, searches in history for options
      enableSyntaxHighlighting = true;
      enableCompletion = true;
      history.size = 100000;

#      oh-my-zsh = {                               # Extra plugins for zsh
#        enable = true;
#        plugins = [ "git" ];
#      };

#      shellInit = ''                            # Zsh theme
#        # Spaceship
#        source ${pkgs.spaceship-prompt}/share/zsh/site-functions/prompt_spaceship_setup
#        autoload -U promptinit; promptinit
##       source $HOME/.config/shell/shell_init
#        # Hook direnv
##       emulate zsh -c "$(direnv hook zsh)"
#        # Swag
#        pfetch                                  # Show fetch logo on terminal start
#      '';
    };
  };
}
