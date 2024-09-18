set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/kd-single-application
  REF v0.1
  SHA512 98b656035a88db37d0caa0bfc33a9bfd5ea0cf6c8b9277ef7bf1e9e1060b8f84df7aebe7a72b90674d205935916ef44c48088dff9f85e8b29c22602d5738a0fa
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")