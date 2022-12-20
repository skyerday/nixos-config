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
      owner = "62939";
      group = "62939";
    };

    wpa_supplicant = {
      file = ./wpa_supplicant/wpa_supplicant.conf.age;
      path = "/etc/wpa_supplicant.conf";
    };

    zwavejs_settings = {
      file = ./zwavejs_ui/zwavejs_ui_settings.json.age;
      path = "/var/lib/zwavejs/store/settings.json";
    };

    zwavejs_nodes = {
      file = ./zwavejs_ui/zwavejs_ui_nodes.json.age;
      path = "/var/lib/zwavejs/store/nodes.json";
    };

  };
}
