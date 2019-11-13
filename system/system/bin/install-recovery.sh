#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33870752:c63f44ee77721d544952c9b6ec00215240802b01; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9880480:76e0da20bf38c51f5982702ea75258c76d20ae8c EMMC:/dev/block/platform/bootdevice/by-name/recovery c63f44ee77721d544952c9b6ec00215240802b01 33870752 76e0da20bf38c51f5982702ea75258c76d20ae8c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
