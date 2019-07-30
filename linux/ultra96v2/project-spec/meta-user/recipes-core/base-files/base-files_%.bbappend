dirs755 += "/media/card"

do_install_append() {
    sed -i '/mmcblk0p1/s/^#//g' ${D}${sysconfdir}/fstab
}

