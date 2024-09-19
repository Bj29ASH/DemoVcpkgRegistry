set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/SIMDIS
  REF v1.17
  SHA512 447ceae8459d96a0e35b53d2ad1a61ddf8451930b1723b37d1316e4eb58a7ba38089b30a9df66900f8c3a2dfd74c8c7f0f14caaa71573c974786dd2eb1ca5ea4
  HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")