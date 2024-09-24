set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/geographiclib
  REF v1.52
  SHA512 7859cb92be9e3efa12ef47426b973b5f566f5a3dab7e2cf6e5780a3a2788ad236649212c2b2e3faf4c29044e19a7978abfeea03f6ce02c7d6964f1cb5b27b10a
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")