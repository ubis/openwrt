#
# Copyright (C) 2015 OpenWrt.org
# Copyright (C) 2017 LEDE project
#

SUBTARGET:=hi3536dv100
BOARDNAME:=HI3536DV100 based boards
CPU_TYPE:=cortex-a7
CPU_SUBTYPE:=neon-vfpv4

define Target/Description
	Build firmware images for Hisilicon HI3536DV100 SoC based devices.
endef
