#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33870752:1e1301f5f9a979c3e6530db45d48e81c3edffcd0; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9880480:e82c000556d2faf701887da84d7ad69d0ea15ab2 EMMC:/dev/block/platform/bootdevice/by-name/recovery 1e1301f5f9a979c3e6530db45d48e81c3edffcd0 33870752 e82c000556d2faf701887da84d7ad69d0ea15ab2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
