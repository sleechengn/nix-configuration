{ config, pkgs, ... }:

{
	virtualisation.virtualbox.host.enable = true;
	user.extraGroups.vboxusers.members = [ "sa" ];
}
