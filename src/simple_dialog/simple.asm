include \masm32\include64\masm64rt.inc
.data
    hInstance dq ?
    hIcon     dq ?

.code
WinMainCRTStartup proc
    mov hInstance, rv(GetModuleHandle,0)
    mov hIcon,     rv(LoadImage,hInstance,10,IMAGE_ICON,32,32,LR_DEFAULTCOLOR)
    invoke DialogBoxParam,hInstance,100,0,ADDR DialogProc, hIcon
    invoke ExitProcess,0
    ret
WinMainCRTStartup endp

DialogProc proc hWin:QWORD,uMsg:QWORD,wParam:QWORD,lParam:QWORD
    .switch uMsg
        .case WM_INITDIALOG
            invoke SendMessage,hWin,WM_SETICON,1,lParam
            invoke SendMessage,rv(GetDlgItem,hWin,108),STM_SETIMAGE,IMAGE_ICON,lParam
            .return TRUE
        .case WM_COMMAND
            .switch wParam
                .case 106
                    jmp _end_dialog
            .endsw
        .case WM_CLOSE
            _end_dialog:
            invoke EndDialog,hWin,0
    .endsw

    xor rax,rax
    ret
DialogProc endp

end