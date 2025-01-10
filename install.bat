mkdir work\lib

call init.bat

cd work
"%RPATH%\Rscript.exe" ..\install.r

cd ..
call bin_exppand.bat