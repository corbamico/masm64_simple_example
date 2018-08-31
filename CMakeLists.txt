cmake_minimum_required(VERSION 2.12)

set(ENV{ASM_MASM} "/masm32/bin64/ml64.exe")
set(CMAKE_LINKER  "/masm32/bin64/link.exe")
set(ENV{RC}       "/masm32/bin64/rc.exe")

set(CMAKE_ASM_MASM_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_ASM_MASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> /OUT:<TARGET> <LINK_LIBRARIES>")
set(CMAKE_RC_COMPILE_OBJECT        "$ENV{RC} <DEFINES> <INCLUDES> <FLAGS> /r /Fo<OBJECT> <SOURCE>")

project(masm_simple ASM_MASM)
add_subdirectory(src bin)
