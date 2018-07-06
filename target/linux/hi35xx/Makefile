#
# Copyright (C) 2012-2016 OpenWrt.org
# Copyright (C) 2017 LEDE project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=hi35xx
BOARDNAME:=Hisilicon HI35xx
FEATURES:=ext4 usb fpu squashfs
MAINTAINER:=Jokubas Maciulaitis <ubitas52@gmail.com>
SUBTARGETS:=hi3536d

KERNEL_PATCHVER:=4.9

define Target/Description
	Build firmware image for Hisilicon HI35xx SoC devices.
endef

include $(INCLUDE_DIR)/target.mk

KERNELNAME:=zImage dtbs

$(eval $(call BuildTarget))
