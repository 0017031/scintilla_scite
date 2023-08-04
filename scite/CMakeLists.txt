cmake_minimum_required(VERSION 3.20)
set(t scite)
# set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

project(${t})

message("${t}        : ${CMAKE_BUILD_TYPE},  ${CMAKE_CURRENT_SOURCE_DIR}")
add_compile_options(/GL)
add_link_options(/LTCG)
get_filename_component(scintilla_path "../scintilla" ABSOLUTE)
get_filename_component(lexilla_path "../lexilla" ABSOLUTE)

add_subdirectory(${lexilla_path} lexilla)
add_subdirectory(${scintilla_path} scintilla)

add_executable(${t} WIN32)

target_include_directories(${t} PRIVATE src lua/src)
target_compile_features(${t} PRIVATE cxx_std_17)
target_compile_definitions(${t} PRIVATE STATIC_BUILD CMAKE_BUILD UNICODE _UNICODE LUA_USER_H="scite_lua_win.h")
target_link_libraries(${t} PRIVATE scintilla lexilla 
ComCtl32 
Uxtheme 
MSImg32
)

file(GLOB _src CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx)
file(GLOB _win32 CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/win32/*.cxx)
file(GLOB _lua CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/lua/src/*.c)
file(GLOB_RECURSE _rc CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/*.rc)
list(FILTER _win32 EXCLUDE REGEX "ScintillaDLL")
target_sources(${t} PRIVATE ${_src} ${_win32} ${_lua} ${_rc} 
win32/SciTE.exe.manifest)

install(TARGETS scite DESTINATION bin)
install(FILES src/SciTEGlobal.properties DESTINATION bin)

# set(CMAKE_RC_FLAGS "/l\"0x0409\" /nologo")
# include(CMakePrintHelpers)
# list(JOIN _win32 "\n" _ssout)
# message("_win32:\n${_ssout}")