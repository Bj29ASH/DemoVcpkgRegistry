set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/polylabel
  REF v1.1.0
  SHA512 3629f9027249cb5647585420fe0ccec5b15ca175fb0cd0308907139336cb990faef4514379c75ef4ada375ebc6504acd45a6ff5c739f4230258f2a671c1b12c4
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")