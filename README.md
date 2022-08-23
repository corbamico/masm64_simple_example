# Simple Example Assembly MASM64

## prepare

  Download MASM32 64bit [here](http://www.masm32.com/download/masm64.zip) and unzip it to root \masm32 directory on any of partition.  
  Find ml64/link from "Visual Studio 20xx", Copy ml64.exe/link.exe etc. to \masm32\bin64 (filelist "Microsoft_File_List.txt" is under that directory).  
  You can download [BuildTools for Visual Studio 2017](https://go.microsoft.com/fwlink/p/?linkid=875721)  

## Compile

### method 1: batch file

```shell
>makeit.bat
```

### method 2: nmake

```shell
>cd simple_dialog
>nmake
>cd simple_exit
>nmake
```

### method 3: cmake

```shell
>mkdir build & cd build & cmake -G"NMake Makefiles" ..
>nmake
```

```shell
>mkdir build & cd build & cmake -G"Visual Studio 15 2017 Win64" ..
>msbuild masm_simple.sln
```