include \masm32\include64\masm64rt.include

.data
    pText  db "Simple MASM",0
    pTitle db "Welcome",0

.code
mainCRTStartup proc
    invoke MessageBox,0, ADDR pText, ADDR pTitle, MB_OK
    invoke ExitProcess,0
mainCRTStartup endp

end