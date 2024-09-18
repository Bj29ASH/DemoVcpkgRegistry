set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/spdlog
  REF v1.11.0
  SHA512 bfd01c27f5000fb2d6c7cfcb00e8b0b8622a09f2d27ad7c8ffbcb83d5b88e943228abe7f19f8f6566285bf6b9e5f7300a1ed4220dd764a03daead53577d9915e
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")