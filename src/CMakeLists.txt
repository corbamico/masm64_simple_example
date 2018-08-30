add_executable(simple simple.asm)
set_target_properties(simple PROPERTIES LINK_FLAGS "/SUBSYSTEM:CONSOLE /MACHINE:X64 /nologo /LARGEADDRESSAWARE")