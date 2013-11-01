# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit calculate

DESCRIPTION="The theme for Calculate Media Center"
HOMEPAGE="http://www.calculate-linux.org/calcualte-cds-themes"
SRC_URI="ftp://ftp.calculate.ru/pub/calculate/${PN}/${P}.tar.bz2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="!media-gfx/calculate-cds-themes
	media-gfx/splashutils"

DEPEND="${RDEPEND}"

src_install() {
		insinto /
		doins -r .
}
