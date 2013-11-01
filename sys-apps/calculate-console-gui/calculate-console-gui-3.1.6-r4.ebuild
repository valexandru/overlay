# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
SUPPORT_PYTHON_ABIS="1"
PYTHON_DEPEND="2:2.7"
RESTRICT_PYTHON_ABIS="2.4 2.5 2.6 3.*"

inherit distutils eutils

SRC_URI="ftp://ftp.calculate.ru/pub/calculate/calculate3/${PN}/${P}.tar.bz2"

DESCRIPTION="Qt gui console client for WSDL Calculate 3"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS="amd64 x86"

DEPEND="~sys-apps/calculate-core-3.1.6
	dev-python/dbus-python
	virtual/python-imaging
	dev-python/pyside[script]"

RDEPEND="${DEPEND}"

src_unpack() {
    unpack "${A}"
    cd "${S}"

    # apply revision changes
    epatch "${FILESDIR}/calculate-console-gui-3.1.6-r2.patch"
}
