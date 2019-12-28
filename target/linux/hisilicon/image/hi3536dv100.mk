#
# Copyright (C) 2013-2016 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Device/n6708g5n
  DEVICE_TITLE:=Techage N6708G5 8 CHANNEL NVR
  SUPPORTED_DEVICES:=techage,n6708g5n
  HISI_DTS:=hi3536dv100-demb
endef
TARGET_DEVICES += n6708g5n 
