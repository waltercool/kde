# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

KMNAME="kdesdk"
inherit kde4-meta

DESCRIPTION="KDE4 translation tool"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~x86"
IUSE="debug +handbook"

# Althrought they are purely runtime, its too useless without them
RDEPEND="
	$(add_kdebase_dep kde-base/krosspython)
	$(add_kdebase_dep kde-base/kdesdk-strigi-analyzer)
"
