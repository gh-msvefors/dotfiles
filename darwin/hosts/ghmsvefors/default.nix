
{ config, pkgs, home-manager, ... }:
{

  users.users.msvefors = {               # macOS user
    home = "/Users/msvefors";
    shell = pkgs.zsh;                     # Default shell
  };

  networking = {
    computerName = "ghmsvefors";             # Host name
    hostName = "ghmsvefors";
  };

}
