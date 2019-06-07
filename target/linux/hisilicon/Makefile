#
# Copyright (C) 2012-2016 OpenWrt.org
# Copyright (C) 2017 LEDE project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=hisilicon
BOARDNAME:=Hisilicon HI35xx
FEATURES:=ext4 usb fpu squashfs
SUBTARGETS:=hi3536dv100
MAINTAINER:=Jokubas Maciulaitis <ubitas52@gmail.com>

KERNEL_PATCHVER:=4.9
KERNELNAME:=zImage dtbs

define Target/Description
	Build firmware images for Hisilicon HI35xx SoC based devices.
endef

include $(INCLUDE_DIR)/target.mk

$(eval $(call BuildTarget))
