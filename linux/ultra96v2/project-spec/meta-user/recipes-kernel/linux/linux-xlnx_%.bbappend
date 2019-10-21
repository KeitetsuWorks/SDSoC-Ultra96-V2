SRC_URI += "file://bsp.cfg \
            file://sdsoc-platform.cfg \
            file://usb-webcam.cfg \
            "

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
