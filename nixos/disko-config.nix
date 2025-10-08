{ lib, disko, ... }:
{
  disko.devices = {
    disk = {
      vda = {
        type = "disk";
        device = "/dev/vda"; # ЗАМЕНИТЕ на ваш диск!
        content = {
          type = "table";
          format = "gpt";
          partitions = [
            # ESP раздел для загрузчика
            {
              name = "ESP";
              start = "0";
              end = "512M";
              bootable = true;
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            }
            # Основной раздел с LUKS шифрованием
            {
              name = "luks";
              start = "512M";
              end = "100%";
              content = {
                type = "luks";
                name = "crypted";
                content = {
                  type = "filesystem";
                  format = "ext4";
                  mountpoint = "/";
                };
              };
            }
          ];
        };
      };
    };
  };
}
