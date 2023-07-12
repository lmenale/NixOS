{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "lume" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
