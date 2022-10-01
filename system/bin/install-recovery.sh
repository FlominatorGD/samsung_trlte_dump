#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14925824:4db02e530ca2e9d6391f2945707f3aa5ce207942; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12525568:ce929dc4449d23df0496f78c1537986f9eaa7548 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 4db02e530ca2e9d6391f2945707f3aa5ce207942 14925824 ce929dc4449d23df0496f78c1537986f9eaa7548:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
