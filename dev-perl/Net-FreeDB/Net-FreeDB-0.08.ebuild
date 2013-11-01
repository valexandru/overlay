# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit perl-module

DESCRIPTION="OOP interface to the FreeDB database"
HOMEPAGE="http://search.cpan.org/~roam/"
SRC_URI="mirror://cpan/authors/id/R/RO/ROAM/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-perl/CDDB-File-1.01
	dev-lang/perl
	virtual/perl-libnet"
RDEPEND="${DEPEND}"
