set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Bj29ASH/DemoVcpkgLib
  REF v1.0.0
  SHA512 ed2e9c33a6b40678e296da5a3ec5b61f21f5b8e6695c06df6171b6d7316770c8511e27c8448bb9919afaf3f5cdd2d635cf647c692cb06a30f9356f61bfc8f071
  HEAD_REF master
)

vcpkg_cmake_configure(
  SOURCE_PATH ${SOURCE_PATH}
  OPTIONS
  -DBUILD_SHARED_LIBS=OFF
)

vcpkg_cmake_build()
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")