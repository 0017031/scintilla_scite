cmake_minimum_required(VERSION 3.20)
set(t scintilla)

if(CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR) # stand-alone
    # set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    get_filename_component(lexilla_path "../lexilla" ABSOLUTE)
    project(${t} CXX)
    message("project(${t} CXX):   ${CMAKE_SOURCE_DIR}")
    message("lexilla_path:\t\t${lexilla_path}")
else() # sub-dir
    message("${t}    : ${CMAKE_BUILD_TYPE},  ${CMAKE_CURRENT_SOURCE_DIR}")
    set(SCINTILLA_STATIC_LIBRARY ${t} PARENT_SCOPE)
endif()

add_library(${t})
target_compile_features(${t} PRIVATE cxx_std_17)
target_include_directories(${t} PRIVATE src)
target_include_directories(${t} PUBLIC include)
target_link_libraries(${t} INTERFACE 
MSImg32 
Imm32
)

file(GLOB_RECURSE cpp_files CONFIGURE_DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/*.cxx)
list(FILTER cpp_files EXCLUDE REGEX "examples|test|gtk")
target_sources(${t} PRIVATE ${cpp_files})

install(TARGETS ${t} DESTINATION bin)

