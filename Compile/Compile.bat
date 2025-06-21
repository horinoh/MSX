@rem 使用法 : Compile.bat XXX.bas

@rem 予め MSX_BACON をインストールしておくこと (ここでは C 直下想定)
@set BACON_DIR=C:\msx_basic_compiler-main\msx_basic_compiler

@rem アセンブル (.bas -> .asm)
@%BACON_DIR%\Release\msx_bacon.exe -O0 %1 %~n1.asm
@rem %BACON_DIR%\Release\msx_bacon.exe -O3 %1 %~n1.asm

@rem コンパイル (.asm -> .bin)
@%BACON_DIR%\zma.exe %~n1.asm %~n1.bin

@rem XXX.bin が作られるので、MSX上で以下のようにして動かす
@rem (BACONLDR.BIN は %BACON_DIR%\baconloader\ 以下にある)
@rem 	bload"BACONLDR.BIN",r
@rem 	bload"XXX.bin",r
