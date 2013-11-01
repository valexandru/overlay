# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
SUPPORT_PYTHON_ABIS="1"
PYTHON_DEPEND="2:2.7"
RESTRICT_PYTHON_ABIS="2.4 2.5 2.6 3.*"

inherit distutils eutils

SRC_URI="ftp://ftp.calculate.ru/pub/calculate/calculate2/${PN}/${P}.tar.bz2"

DESCRIPTION="The utilities for assembling tasks of Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="~sys-apps/calculate-builder-2.2.31"

RDEPEND="${DEPEND}"

src_unpack() {
	unpack "${A}"
	cd "${S}"

	# fix video script
	epatch "${FILESDIR}/calculate-assemble-2.2.31-video_script.patch"
	epatch "${FILESDIR}/calculate-assemble-2.2.31-video_script2.patch"
	# discard clt
	epatch "${FILESDIR}/calculate-assemble-2.2.31-discard_clt.patch"
	# force checkout branches
	epatch "${FILESDIR}/calculate-assemble-2.2.31-force_checkout.patch"

	# -F option
	epatch "${FILESDIR}/calculate-assemble-2.2.31-force_option.patch"
	
	# newline for world
	epatch "${FILESDIR}/calculate-assemble-2.2.31-fix_video_script.patch"
}
