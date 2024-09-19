set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/variant
  REF v1.1.3
  SHA512 8da0d5546ee2d2e1bd1742c2d9d3137e67cee8d987527f15fd402617104fe0fa3e2ac0e330cb0f517bf23270138e85b9d9be9bf5b8bb69ae9a22da54fd03f496
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")