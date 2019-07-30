#!/bin/bash

IMAGES_LINUX_DIR=./images/linux


if [ ! -d ${IMAGES_LINUX_DIR}/boot ]; then
    mkdir -p ${IMAGES_LINUX_DIR}/boot
fi

cp ${IMAGES_LINUX_DIR}/zynqmp_fsbl.elf ${IMAGES_LINUX_DIR}/boot/fsbl.elf
cp ${IMAGES_LINUX_DIR}/bl31.elf ${IMAGES_LINUX_DIR}/boot/bl31.elf
cp ${IMAGES_LINUX_DIR}/u-boot.elf ${IMAGES_LINUX_DIR}/boot/u-boot.elf
cp ${IMAGES_LINUX_DIR}/pmufw.elf ${IMAGES_LINUX_DIR}/boot/pmufw.elf


if [ ! -d ${IMAGES_LINUX_DIR}/image ]; then
    mkdir -p ${IMAGES_LINUX_DIR}/image
fi

cp ${IMAGES_LINUX_DIR}/image.ub ${IMAGES_LINUX_DIR}/image/image.ub


cat > ${IMAGES_LINUX_DIR}/boot.bif << "EOF"
the_ROM_image:
{
    [fsbl_config] a53_x64
    [bootloader] <fsbl.elf>
    [pmufw_image] <pmufw.elf>
    [destination_device=pl] <bitstream>
    [destination_cpu=a53-0, exception_level=el-3, trustzone] <bl31.elf>
    [destination_cpu=a53-0, exception_level=el-2] <u-boot.elf>
}
EOF

