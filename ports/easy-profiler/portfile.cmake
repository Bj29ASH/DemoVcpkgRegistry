set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/easy-profiler
  REF v2.1.0
  SHA512 a7824676754434fde04ea76e18eb45dcb900eaf776b4c7fd213866ebea0655e4b32b249cbe802aa3b58d1529ad171ecbc9c134c46a4ecde353ca6de21e65783c
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")