set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/SIMDIS
  REF v1.17
  SHA512 00ee985f22045a3120d5ba8f3ccf7f01593cad59182129aa0f8a3911f4b30ece0cd97e1af7e28e8f86cbda88af5288a0cc5cd0f233fb12d5ebe09ba814df2abc
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")