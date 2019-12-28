# 
# Copyright (C) 2012-2015 OpenWrt.org
# Copyright (C) 2016-2017 LEDE project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

DTS:=hi3536dv100-demb

define Build/hisi-build
	cp $(KDIR)/zImage $(KDIR)/zImage-dtb
	$(call Image/BuildDTB,../dts/$(DTS).dts,$(KDIR)/$(DTS).dtb)
	cat $(KDIR)/$(DTS).dtb >> $(KDIR)/zImage-dtb
  mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n 'Linux' -d $(KDIR)/zImage-dtb $(KDIR)/uImage-dtb
endef

define Device/Default
  PROFILES := Default
  DEVICE_VARS := HISI_DTS
  KERNEL_NAME := zImage
  KERNEL := kernel-bin | uImage none
  IMAGES := sysupgrade.bin
  IMAGE/sysupgrade.bin := hisi-build | append-metadata
endef

#DTS:=hi3536dv100-demb

#define PatchKernelLzmaDtb
#	cp $(KDIR)/zImage $(KDIR)/zImage-dtb
#	$(call Image/BuildDTB,../dts/$(DTS).dts,$(KDIR)/$(DTS).dtb)
#	cat $(KDIR)/$(DTS).dtb >> $(KDIR)/zImage-dtb
#	mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n 'Linux' -d $(KDIR)/zImage-dtb $(KDIR)/uImage
#endef

#define Build/patch-dtb
#	$(STAGING_DIR_HOST)/bin/patch-dtb $@ ../dts/$(DTS).dtb
#endef

#define Image/Prepare
#	$(call Image/BuildDTB,../dts/$(DTS).dts,$@.dtb)
#endef

#define Image/Build
#	$(call PatchKernelLzmaDtb,$(1),$(2),$(4))
#	$(call Image/Build/$(1))
#endef

include hi3536dv100.mk

$(eval $(call BuildImage))
