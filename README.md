Ultra96-V2 SDSoC Platform
========


## Description

This Custom SDSoC Environment Platform is created for SDx 2018.2, Vivado 2018.2, and PetaLinux 2018.2.


## Requirement

### Hardware

* [Avnet Ultra96-V2 Development Board](http://zedboard.org/product/ultra96-v2-development-board)
* [Avnet Ultra96 USB-to-JTAG/UART Pod](http://zedboard.org/product/ultra96-usb-jtaguart-pod)
* [Adapter Technology Co., Ltd. STD-12020U](http://akizukidenshi.com/catalog/g/gM-06239/)
* [マル信無線電機 MP-203](https://www.sengoku.co.jp/mod/sgk_cart/detail.php?code=32UA-3BFH)
* [秋月電子通商 AE-FT234X](http://akizukidenshi.com/catalog/g/gM-08461/)
* [PLANEX PL-MDPVG02](https://www.planex.co.jp/product/av/pl-mdpvg02/)
* [Ainex AMC-MDPHD](https://www.ainex.jp/products/amc-mdphd/)


### Software

* Xilinx PetaLinux 2018.2
* Xilinx SDSoC 2018.2
* Xilinx Vivado 2018.2


### Board Definition Files

* [Avnet/bdf: Avnet Board Definition Files](https://github.com/Avnet/bdf)


### PetaLinux BSP

* [xilinx-ultra96-reva-v2018.2-final.bsp](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools.html)


## Quick-Start Guide

### Configure SD RootFS

```shell
$ sudo fdisk /dev/sdX
$ sudo mkfs.msdos -n ZYNQMP_BOOT /dev/sdX1
$ sudo mkfs.ext4 /dev/sdX2
$ sudo umount /dev/sdX2
$ sudo dd if=./linux/ultra96/images/linux/rootfs.ext4 of=/dev/sdX2
$ sync
$ sudo resize2fs /dev/sdX2
$ sync
```


## References

* [UG1146 - SDSoC Environment Platform Development Guide (ver2018.2)](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug1146-sdsoc-platform-development.pdf)
* [UG1146 - SDSoC 環境プラットフォーム開発ガイド (日本語版) (ver2018.2)](https://japan.xilinx.com/support/documentation/sw_manuals_j/xilinx2018_2/ug1146-sdsoc-platform-development.pdf)
* [UG1236 - SDSoC Environment Tutorial: Creating a Platform from a Reference Design (ver2018.2)](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug1236-sdsoc-platform-tutorial.pdf)
* [UG1236 - SDSoC 環境チュートリアル: プラットフォームの作成 (日本語版) (ver2018.2)](https://japan.xilinx.com/support/documentation/sw_manuals_j/xilinx2018_2/ug1236-sdsoc-platform-tutorial.pdf)
