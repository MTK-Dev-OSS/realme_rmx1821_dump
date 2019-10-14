#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33870752:189bc823d2748e9138a7b1d0bcc5821ba995f55e; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9880480:7b924a3de1f6025375f518bc747023a2a7c50ac8 EMMC:/dev/block/platform/bootdevice/by-name/recovery 189bc823d2748e9138a7b1d0bcc5821ba995f55e 33870752 7b924a3de1f6025375f518bc747023a2a7c50ac8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
