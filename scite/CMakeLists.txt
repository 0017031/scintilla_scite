if (CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    cmake_minimum_required(VERSION 3.20)
    project(scite LANGUAGES CXX)
    set(CMAKE_CXX_STANDARD 23)
endif ()

add_executable(scite WIN32)

target_include_directories(scite PRIVATE src lua/src)
target_compile_definitions(scite PRIVATE UNICODE)
target_compile_options(scite PRIVATE -DLUA_USER_H="scite_lua_win.h")
target_link_libraries(scite PRIVATE scintilla lexilla ComCtl32 Uxtheme MSImg32)
install(TARGETS scite DESTINATION bin)
install(FILES src/SciTEGlobal.properties DESTINATION bin)
#scite/src/SciTEGlobal.properties

#-DLUA_USER_H=\"scite_lua_win.h\
target_sources(scite PRIVATE
        win32/DirectorExtension.cxx
        win32/GUIWin.cxx
        win32/SciTEWinBar.cxx
        win32/SciTEWinDlg.cxx
        win32/Strips.cxx
        win32/UniqueInstance.cxx
        win32/SciTEWin.cxx

        win32/SciTERes.rc

        ../lexilla/access/LexillaAccess.cxx
        ../scintilla/call/ScintillaCall.cxx

        src/Cookie.cxx
        src/Credits.cxx
        src/EditorConfig.cxx
        src/ExportHTML.cxx
        src/ExportPDF.cxx
        src/ExportRTF.cxx
        src/ExportTEX.cxx
        src/ExportXML.cxx
        src/FilePath.cxx
        src/FileWorker.cxx
        src/IFaceTable.cxx
        src/JobQueue.cxx
        src/MatchMarker.cxx
        src/MultiplexExtension.cxx
        src/PathMatch.cxx
        src/PropSetFile.cxx
        src/ScintillaWindow.cxx
        src/SciTEBase.cxx
        src/SciTEBuffers.cxx
        src/SciTEIO.cxx
        src/SciTEProps.cxx
        src/StringHelpers.cxx
        src/StringList.cxx
        src/StyleDefinition.cxx
        src/StyleWriter.cxx
        src/Utf8_16.cxx
        src/LuaExtension.cxx

        lua/src/lapi.c
        lua/src/lcode.c
        lua/src/lctype.c
        lua/src/ldebug.c
        lua/src/ldo.c
        lua/src/ldump.c
        lua/src/lfunc.c
        lua/src/lgc.c
        lua/src/llex.c
        lua/src/lmem.c
        lua/src/lobject.c
        lua/src/lopcodes.c
        lua/src/lparser.c
        lua/src/lstate.c
        lua/src/lstring.c
        lua/src/ltable.c
        lua/src/ltm.c
        lua/src/lundump.c
        lua/src/lvm.c
        lua/src/lzio.c
        lua/src/lauxlib.c
        lua/src/lbaselib.c
        lua/src/lbitlib.c
        lua/src/lcorolib.c
        lua/src/ldblib.c
        lua/src/liolib.c
        lua/src/lmathlib.c
        lua/src/ltablib.c
        lua/src/lstrlib.c
        lua/src/loadlib.c
        lua/src/loslib.c
        lua/src/linit.c
        lua/src/lutf8lib.c
        )

#src -I../lua/src