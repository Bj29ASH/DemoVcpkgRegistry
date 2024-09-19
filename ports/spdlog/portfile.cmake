set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/spdlog
  REF v1.11.0
  SHA512 b69e75138a2f6b4e05d0bd4980c0412e1371c12bd222f1eff237cbf5cc5b6104f859b797eb411977906cfc412b9898fdcc6cddb3cbae17f91cd452bd0e7a3e93
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")