add_executable(simple_exit simple.asm)
set_target_properties(simple_exit PROPERTIES LINK_FLAGS "/SUBSYSTEM:CONSOLE /MACHINE:X64 /nologo /LARGEADDRESSAWARE")