@echo off
rem
rem Directory tree navigation
rem

set _DIR_=..\..\..\..
set _ARGS_=%*
:loop
  if "%_ARGS_%" == "" goto endloop
  for /f "tokens=1,* delims=\\/ " %%i in ("%_ARGS_%") do set _ARGS_=%%j&&set _DIR_=%_DIR_%\%%i
goto loop
:endloop
set _ARGS_=
if "%UDOESPUSHD%" == "" cd %_DIR_%
if not "%UDOESPUSHD%" == "" pushd %_DIR_%
set _DIR_=
