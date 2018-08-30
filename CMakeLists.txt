cmake_minimum_required(VERSION 2.12)

set(ENV{ASM_MASM} "/masm/bin64/ml64.exe")
set(CMAKE_LINKER  "/masm/bin64/link.exe")

set(CMAKE_ASM_MASM_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_ASM_MASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> /OUT:<TARGET> <LINK_LIBRARIES>")

project(masm_simple ASM_MASM)
add_subdirectory(src bin)
