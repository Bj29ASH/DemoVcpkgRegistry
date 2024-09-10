vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO geographiclib/geographiclib
  REF v1.52
  SHA512 e2cb0702172116a03a9ad7297a8e67c4503995480252613aaadc6ebae98744f270882b307d25678e15bfb1053637b38a0afa610471a869756a19f5f92b6bfe31
  HEAD_REF main
)

vcpkg_check_features(
  OUT_FEATURE_OPTIONS FEATURE_OPTIONS
  FEATURES
  "tools" TOOLS
)

if(TOOLS)
    set(TOOL_OPTION "-DBINDIR=tools/${PORT}")
else()
    set(TOOL_OPTION -DBINDIR=OFF)
endif()

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  OPTIONS ${TOOL_OPTION}
  "-DCMAKEDIR=share/${PORT}"
  -DDOCDIR=OFF
  -DEXAMPLEDIR=OFF
  -DMANDIR=OFF
  -DSBINDIR=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup()
vcpkg_copy_pdbs()

vcpkg_fixup_pkgconfig()

if(tools IN_LIST FEATURES)
    vcpkg_copy_tool_dependencies("${CURRENT_PACKAGES_DIR}/tools/${PORT}")
endif()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/tools")

file(INSTALL "${SOURCE_PATH}/LICENSE.txt"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright)

configure_file("${CMAKE_CURRENT_LIST_DIR}/usage"
    "${CURRENT_PACKAGES_DIR}/share/${PORT}/usage" @ONLY)
