if (CMAKE_CURRENT_SOURCE_DIR STREQUAL CMAKE_SOURCE_DIR)
    cmake_minimum_required(VERSION 3.20)
    project(lexilla LANGUAGES CXX)
    set(CMAKE_CXX_STANDARD 23)
endif ()

add_library(lexilla)

target_include_directories(lexilla PRIVATE lexlib)
target_include_directories(lexilla INTERFACE access)
target_include_directories(lexilla PUBLIC include ../scintilla/include)
install(TARGETS lexilla DESTINATION bin)
target_sources(lexilla PRIVATE
        src/Lexilla.cxx

        lexlib/Accessor.cxx
        lexlib/CharacterCategory.cxx
        lexlib/CharacterSet.cxx
        lexlib/DefaultLexer.cxx
        lexlib/LexAccessor.cxx
        lexlib/LexerBase.cxx
        lexlib/LexerModule.cxx
        lexlib/LexerSimple.cxx
        lexlib/PropSetSimple.cxx
        lexlib/StyleContext.cxx
        lexlib/WordList.cxx

        lexers/LexA68k.cxx
        lexers/LexAbaqus.cxx
        lexers/LexAda.cxx
        lexers/LexAPDL.cxx
        lexers/LexAsm.cxx
        lexers/LexAsn1.cxx
        lexers/LexASY.cxx
        lexers/LexAU3.cxx
        lexers/LexAVE.cxx
        lexers/LexAVS.cxx
        lexers/LexBaan.cxx
        lexers/LexBash.cxx
        lexers/LexBasic.cxx
        lexers/LexBatch.cxx
        lexers/LexBibTeX.cxx
        lexers/LexBullant.cxx
        lexers/LexCaml.cxx
        lexers/LexCIL.cxx
        lexers/LexCLW.cxx
        lexers/LexCmake.cxx
        lexers/LexCOBOL.cxx
        lexers/LexCoffeeScript.cxx
        lexers/LexConf.cxx
        lexers/LexCPP.cxx
        lexers/LexCrontab.cxx
        lexers/LexCsound.cxx
        lexers/LexCSS.cxx
        lexers/LexD.cxx
        lexers/LexDataflex.cxx
        lexers/LexDiff.cxx
        lexers/LexDMAP.cxx
        lexers/LexDMIS.cxx
        lexers/LexECL.cxx
        lexers/LexEDIFACT.cxx
        lexers/LexEiffel.cxx
        lexers/LexErlang.cxx
        lexers/LexErrorList.cxx
        lexers/LexEScript.cxx
        lexers/LexFlagship.cxx
        lexers/LexForth.cxx
        lexers/LexFortran.cxx
        lexers/LexFSharp.cxx
        lexers/LexGAP.cxx
        lexers/LexGui4Cli.cxx
        lexers/LexHaskell.cxx
        lexers/LexHex.cxx
        lexers/LexHollywood.cxx
        lexers/LexHTML.cxx
        lexers/LexIndent.cxx
        lexers/LexInno.cxx
        lexers/LexJSON.cxx
        lexers/LexJulia.cxx
        lexers/LexKix.cxx
        lexers/LexKVIrc.cxx
        lexers/LexLaTeX.cxx
        lexers/LexLisp.cxx
        lexers/LexLout.cxx
        lexers/LexLua.cxx
        lexers/LexMagik.cxx
        lexers/LexMake.cxx
        lexers/LexMarkdown.cxx
        lexers/LexMatlab.cxx
        lexers/LexMaxima.cxx
        lexers/LexMetapost.cxx
        lexers/LexMMIXAL.cxx
        lexers/LexModula.cxx
        lexers/LexMPT.cxx
        lexers/LexMSSQL.cxx
        lexers/LexMySQL.cxx
        lexers/LexNim.cxx
        lexers/LexNimrod.cxx
        lexers/LexNsis.cxx
        lexers/LexNull.cxx
        lexers/LexOpal.cxx
        lexers/LexOScript.cxx
        lexers/LexPascal.cxx
        lexers/LexPB.cxx
        lexers/LexPerl.cxx
        lexers/LexPLM.cxx
        lexers/LexPO.cxx
        lexers/LexPOV.cxx
        lexers/LexPowerPro.cxx
        lexers/LexPowerShell.cxx
        lexers/LexProgress.cxx
        lexers/LexProps.cxx
        lexers/LexPS.cxx
        lexers/LexPython.cxx
        lexers/LexR.cxx
        lexers/LexRaku.cxx
        lexers/LexRebol.cxx
        lexers/LexRegistry.cxx
        lexers/LexRuby.cxx
        lexers/LexRust.cxx
        lexers/LexSAS.cxx
        lexers/LexScriptol.cxx
        lexers/LexSmalltalk.cxx
        lexers/LexSML.cxx
        lexers/LexSorcus.cxx
        lexers/LexSpecman.cxx
        lexers/LexSpice.cxx
        lexers/LexSQL.cxx
        lexers/LexStata.cxx
        lexers/LexSTTXT.cxx
        lexers/LexTACL.cxx
        lexers/LexTADS3.cxx
        lexers/LexTAL.cxx
        lexers/LexTCL.cxx
        lexers/LexTCMD.cxx
        lexers/LexTeX.cxx
        lexers/LexTxt2tags.cxx
        lexers/LexVB.cxx
        lexers/LexVerilog.cxx
        lexers/LexVHDL.cxx
        lexers/LexVisualProlog.cxx
        lexers/LexX12.cxx
        lexers/LexYAML.cxx
        )