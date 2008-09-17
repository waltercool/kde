# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

KMNAME=kdebase-runtime
KMNOMODULE=true
inherit kde4-meta

DESCRIPTION="Icons, localization data and various .desktop files from kdebase."
IUSE=""
KEYWORDS="~amd64 ~x86"

# in order to prevent collision we depend on hicolor-icon-theme for -kdeprefix
# and remove colliding file for kdeprefix we do nothing
DEPEND=">=kde-base/qimageblitz-0.0.4
	!kdeprefix? ( x11-themes/hicolor-icon-theme )"
RDEPEND="${DEPEND}"

KMEXTRA="l10n/
	pics/"
# Note that the eclass doesn't do this for us, because of KMNOMODULE="true".
KMEXTRACTONLY="config-runtime.h.cmake kde4"

src_compile() {
	# remove instalation of colliding file for hicolor-icon-theme
	cd "${S}"
	if ! use kdeprefix; then
		sed -i \
			-e "s:add_subdirectory( hicolor ):#donotwant:g" \
			pics/CMakeLists.txt
	fi
	kde4-base_src_compile
}
