cmake_minimum_required(VERSION 3.20)
project(scintilla_scite)
set(CMAKE_CXX_STANDARD 17)

add_compile_options(/GL)
add_link_options(/LTCG)

add_subdirectory(lexilla)
add_subdirectory(scintilla)
add_subdirectory(scite)