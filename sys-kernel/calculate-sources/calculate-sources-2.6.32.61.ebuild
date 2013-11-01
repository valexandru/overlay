# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
ETYPE="sources"
LONGTERM="1"

inherit calculate-kernel-2

DESCRIPTION="Full sources including the Calculate patchset for the ${KV_MAJOR}.${KV_MINOR} kernel tree"
KEYWORDS="~amd64 ~x86"
HOMEPAGE="http://www.calculate-linux.org"

SRC_URI="${KERNEL_URI} ${ARCH_URI} ${CALC_URI}"

UNIPATCH_LIST="${DISTDIR}/${PN}-${CKV}.tar.bz2"

DEPEND="vmlinuz? ( >=sys-kernel/calckernel-3.4.14
	>=sys-apps/calculate-builder-2.2.11-r2
	|| ( app-arch/xz-utils app-arch/lzma-utils )
	sys-apps/v86d )"

pkg_postinst() {
	calculate-kernel-2_pkg_postinst
	einfo "For more info on this patchset, and how to report problems, see:"
	einfo "${HOMEPAGE}"
}
