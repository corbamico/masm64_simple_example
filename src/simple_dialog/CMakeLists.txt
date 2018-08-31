set_source_files_properties(res/rsrc.rc PROPERTIES LANGUAGE RC)
add_executable(simple_dialog simple.asm res/rsrc.rc)

set_target_properties(simple_dialog PROPERTIES LINKER_LANGUAGE ASM_MASM)
set_target_properties(simple_dialog PROPERTIES LINK_FLAGS "/SUBSYSTEM:WINDOWS /MACHINE:X64 /nologo /LARGEADDRESSAWARE")