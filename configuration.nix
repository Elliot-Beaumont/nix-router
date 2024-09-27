{ config, pkgs, ... }:
{
  let
    machineName = "router";
    domainName = "mydomain.com";
  in {
    imports = [
      ./modules/networking/interfaces.nix
      ./modules/networking/wlan.nix
      ./modules/networking/routing.nix
      ./modules/networking/dhcp.nix
      ./modules/networking/dns.nix
      ./modules/networking/firewall.nix
      ./modules/networking/vlan.nix
      ./modules/services/vpn-server.nix
      ./modules/services/vpn-client.nix
      ./modules/services/ddns.nix
      ./modules/security.nix
      ./modules/mdns.nix
    ];

    networking.hostName = "${machineName}.${domainName}";
    time.timeZone = "America/New_York";
  }
}
