if (CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    cmake_minimum_required(VERSION 3.20)
    project(scintilla LANGUAGES CXX)
    set(CMAKE_CXX_STANDARD 23)
endif ()

add_library(scintilla)

target_include_directories(scintilla PRIVATE src)
target_include_directories(scintilla PUBLIC include)
target_link_libraries(scintilla PRIVATE MSImg32 Imm32)

install(TARGETS scintilla DESTINATION bin)

target_sources(scintilla PRIVATE
        win32/HanjaDic.cxx
        win32/PlatWin.cxx
        win32/ScintillaDLL.cxx
        win32/ScintillaWin.cxx


        src/ScintillaBase.cxx
        src/AutoComplete.cxx
        src/CallTip.cxx
        src/CaseConvert.cxx
        src/CaseFolder.cxx
        src/CellBuffer.cxx
        src/CharacterCategoryMap.cxx
        src/CharacterType.cxx
        src/CharClassify.cxx
        src/ContractionState.cxx
        src/DBCS.cxx
        src/Decoration.cxx
        src/Document.cxx
        src/EditModel.cxx
        src/Editor.cxx
        src/EditView.cxx
        src/Geometry.cxx
        src/Indicator.cxx
        src/KeyMap.cxx
        src/LineMarker.cxx
        src/MarginView.cxx
        src/PerLine.cxx
        src/PositionCache.cxx
        src/RESearch.cxx
        src/RunStyles.cxx
        src/Selection.cxx
        src/Style.cxx
        src/UniConversion.cxx
        src/UniqueString.cxx
        src/ViewStyle.cxx
        src/XPM.cxx
        )