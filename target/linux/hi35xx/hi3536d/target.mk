#
# Copyright (C) 2015 OpenWrt.org
# Copyright (C) 2017 LEDE project
#

SUBTARGET:=hi3536d
BOARDNAME:=HI3536DV100 based boards
CPU_TYPE:=cortex-a7
CPU_SUBTYPE:=neon-vfpv4

define Target/Description
	Build firmware image for Hisilicon HI3536DV100 SoC devices.
endef
