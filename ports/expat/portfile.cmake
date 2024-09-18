set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/expat
  REF v2.4.1
  SHA512 ad0ad560a55b4ba9dc261c4bf42b141bf3b85d7f9f4e2271df98cf67233d7b6bd51054091221e5de614e43e5b14330ab02af0c447cbaf4f8e955060cdf1a1c3d
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")