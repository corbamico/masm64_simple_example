exe=simple.exe
objs=simple.obj  res\rsrc.res

LINK=\masm32\bin64\link.exe
AS=\masm32\bin64\ml64.exe
RC=\masm32\bin64\rc.exe

LINK_FLAGS=/SUBSYSTEM:CONSOLE /MACHINE:X64 /nologo /LARGEADDRESSAWARE

$(exe):$(objs)
	$(LINK) $(LINK_FLAGS) $(objs)

clean:
	-@erase *.obj *.exe res\*.res