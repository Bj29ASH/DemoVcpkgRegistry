set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/sqlite_modern_cpp
  REF v3.2.8
  SHA512 6cce8b1d62dc0aecaefe3607cb38d3aba9a7eb6af3010135ed2f0b4e7f75c03ab77a0038707de971d51fefd085d181f6a7a2aaf6919c8fdf36f9046f0a769a0d
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")