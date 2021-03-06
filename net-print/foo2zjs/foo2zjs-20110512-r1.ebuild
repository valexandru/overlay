# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-print/foo2zjs/foo2zjs-99999999.ebuild,v 1.1 2011/03/12 12:17:27 phajdan.jr Exp $

EAPI="3"

inherit eutils

DESCRIPTION="Support for printing to ZjStream-based printers"
HOMEPAGE="http://foo2zjs.rkkda.com/"
SRC_URI="ftp://ftp.calculate.ru/pub/calculate/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="net-print/cups
	net-print/foomatic-db-engine
	net-print/foomatic-filters
	virtual/udev"
DEPEND="${RDEPEND}
	app-arch/unzip
	net-misc/wget
	sys-devel/bc"

S="${WORKDIR}/${PN}"

src_prepare() {
	# Prevent an access violation, do not create symlinks on live file system
	# during installation.
	sed -e 's/ install-filter / /g' -i Makefile || die
}

src_install() {
	emake DESTDIR="${D}" install || die
}
