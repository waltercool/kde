# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit kde5-meta-pkg

DESCRIPTION="KDE toys - merge this to pull in all kdetoys-derived packages"
HOMEPAGE+=" https://techbase.kde.org/Projects/Kdetoys"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_kdeapps_dep amor)
	$(add_kdeapps_dep ktux)
"
