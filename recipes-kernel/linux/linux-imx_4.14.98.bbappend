# Copyright (C) 2016 Freescale Semiconductor
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI_append = " file://0002-murata-dts-3.3v.patch \
                   file://0003-murata_dts_changes_1.8v_UL_and_ULL.patch \
                   file://0004-kernel_change_for_1.8v_UL_and_ULL.patch \
		   file://0008-kernel_change_for_fmac_log_string.patch"
# vkjb :: removed 007
addtask copy_defconfig_after_patch after do_patch before do_configure
do_copy_defconfig_after_patch () {
    # copy latest imx_v7_defconfig to use
    cp ${S}/arch/arm/configs/imx_v7_defconfig ${B}/.config
    cp ${S}/arch/arm/configs/imx_v7_defconfig ${B}/../defconfig
}
