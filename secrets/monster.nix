# This is imported by the monster nixos configuration module
# and triggers decryption of that secret on that host

{ config, ... }:
{

  config.age.secrets = {
    znc = {
      file = ./znc/znc.conf.age;
      owner = "znc";
      group = "znc";
      mode = "0750";
    };

    adguard = {
      name = "AdGuardHome.yml";
      path = "/var/lib/AdGuardHome/AdGuardHome.yaml";
      file = ./adguard/AdGuardHome.yml.age;
      mode = "600";
      owner = "adguardhome";
      group = "adguardhome";
    };

  };
}
