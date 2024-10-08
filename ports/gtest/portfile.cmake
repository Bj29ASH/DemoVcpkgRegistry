set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/gtest
  REF v1.15.0
  SHA512 ec2c478a90424498c3d88027f27218b7d4349d1b3279d081b638c04fd6ef1a42bc15b89951e61c9d3ed6627f217512bd901de72e3a49e5e556531a2476766242
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")