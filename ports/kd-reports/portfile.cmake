set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/kd-reports
  REF v2.2.0
  SHA512 c7c03338f58e770f29d883cde96711e55d1eb92aeba81d14ee8fce2dd7ffc8fd632afec47f591bdb303d862f675026d544a24ac6f541171b280dbabf1e2468ad
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")