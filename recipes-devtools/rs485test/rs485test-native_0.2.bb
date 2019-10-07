DESCRIPTION = "Tool to test RS485 interface in half duplex mode on host side"
HOMEPAGE = "http://www.phytec.de"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=ecaa4775cb0b10f1d2633e679ac0282f"
SECTION = "devel"

require rs485test_0.2.bb

inherit native deploy

do_compile() {
    ${CC} -Wall -Werror rs485test.c -o rs485test
}

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_TOOLS}"
do_deploy() {
    install -d ${DEPLOY_DIR_TOOLS}
    install -m 0755 ${B}/rs485test ${DEPLOY_DIR_TOOLS}/rs485test-${PV}
    ln -sf rs485test-${PV} ${DEPLOY_DIR_TOOLS}/rs485test
}

addtask deploy before do_package after do_install
