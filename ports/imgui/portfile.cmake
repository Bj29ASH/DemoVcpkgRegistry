set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/imgui
  REF v1.83
  SHA512 eebe2e581f6cecdd3082e089936283452efd3e2577cb33f18aaf5517a47ab29e771b7f536ffab6f1574561a293d6d1ef5afa502697be1c0cd3d33b0be63ca266
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")