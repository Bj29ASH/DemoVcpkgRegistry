set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/GPSBabel
  REF v0.1
  SHA512 62171d10d48c500e9caebe7d02c6cd47e07792cca265816cfcefc40a6b0ddbb023217edbbcf28da2d6a326e672c9963733a1a378a8a959d66a6beecc160a30a1
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")