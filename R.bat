call init.bat


set R_LIBS_USER=%~dp0\work\lib

set  R_LIBS_USER=.\lib

cd %~dp0\work


"%R_INSTALL_PATH%\bin\x64"\Rgui.exe
