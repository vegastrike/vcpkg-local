# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/log
    REF boost-${VERSION}
    SHA512 aaae39126ae047721f71b7a55dc7a325af78c9af0b4e2d6f6d0cd7a440a0dc839acfa683c6dcb736434819e205e9d95ead56364dec60d069367d9976a45c4d17
    HEAD_REF master
	PATCHES
		"synchronization-lib.patch"
		"synchronization-lib2.patch"
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
