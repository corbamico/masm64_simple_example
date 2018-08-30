exe=simple.exe
objs=simple.objs

LINK=\masm32\bin64\link.exe
AS=\masm32\bin64\ml64.exe

LINK_FLAGS=/SUBSYSTEM:CONSOLE /MACHEINE:X64 /nologo /LARGEADDRESSAWARE

$(exe):$(objs)
	$(LINK) $(LINK_FLAGS) $(objs)

clean:
	-@erase *.obj *.exe