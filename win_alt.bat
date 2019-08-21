@echo off
set ARGS=%*
set ADBPATH=bin\adb
set STORAGEPATH=/sdcard/Android/data/com.x0.strai.frep/files/

REM ## initialize
cd "%~dp0"
if not exist tmp mkdir tmp
if exist tmp\_win.bat del tmp\_win.bat
if exist tmp\_script.sh del tmp\_script.sh
title FRep Setup Tool(win_alt)
REM ## do not kill-server first for starting from win.bat
%ADBPATH% start-server > NUL

REM ## check Android version and USB debug connection
:CHECKOSVER
set ANDROIDVER=0
setlocal ENABLEDELAYEDEXPANSION
set /A SDKNUM=0
for /F "usebackq tokens=*" %%i in (`%ADBPATH% %ARGS% shell getprop ro.build.version.sdk 2^>^&1`) do (
  if "%%i"=="error: more than one device/emulator" (
    goto MULTI
  ) else if "%%i"=="error: no devices/emulators found" (
    echo error: device not found.
    goto FAILED
  ) else if "%%i"=="error: device offline" (
    goto OFFLINE
  ) else (
REM ## for matching; find returns ERRORLEVEL 0 for success
    echo %%i | find "error: device unauthorized" > NUL
    if not ERRORLEVEL 1 (
      goto OFFLINE
    )
REM ## skip version check on permission denied / not found
    echo %%i | find "permission denied" > NUL
    if not ERRORLEVEL 1 (
      goto START
    )
    echo %%i | find "not found" > NUL
    if not ERRORLEVEL 1 (
      goto START
    )
REM ## check SDK version
    set /A SDKNUM=%%i+0
    if "!SDKNUM!"=="0" (
REM ## not a number / unknown error.
      goto FAILED
    )
    goto START
  )
)
:START
endlocal & set ANDROIDVER=%SDKNUM%

REM ## try putting strserv from app (for fifo) or storage (for localhost)
%ADBPATH% %ARGS% shell "cat /data/data/com.x0.strai.frep/app_bin/strserv > /data/local/tmp/strserv" 2>nul
if ERRORLEVEL 1 (
  %ADBPATH% %ARGS% shell "cat %STORAGEPATH%strserv > /data/local/tmp/strserv"
  if ERRORLEVEL 1 (
    goto FAILED
  ) else (
    echo /data/local/tmp/strserv -i ^& > tmp\_script.sh
  )
) else (
  echo /data/local/tmp/strserv -c ^& > tmp\_script.sh
)
%ADBPATH% %ARGS% shell "chmod 777 /data/local/tmp/strserv"

REM ## stop current running process (refer pid files, pgrep, ps)
for /F "usebackq tokens=1" %%i in (`%ADBPATH% %ARGS% shell "cat %STORAGEPATH%strserv.pid" 2^>^&1`) do (
  call :STOPIFPID %%i
)
for /F "usebackq tokens=1" %%i in (`%ADBPATH% %ARGS% shell "cat /data/data/com.x0.strai.frep/app_bin/strserv.pid" 2^>^&1`) do (
  call :STOPIFPID %%i
)
for /F "usebackq tokens=1" %%i in (`%ADBPATH% %ARGS% shell "pgrep strserv" 2^>^&1`) do (
  call :STOPIFPID %%i
)
for /F "usebackq tokens=2" %%i in (`%ADBPATH% %ARGS% shell "ps strserv" 2^>^&1`) do (
  call :STOPIFPID %%i
)
for /F "usebackq tokens=2" %%i in (`%ADBPATH% %ARGS% shell "ps /data/local/tmp/strserv" 2^>^&1`) do (
  call :STOPIFPID %%i
)
for /F "usebackq tokens=2" %%i in (`%ADBPATH% %ARGS% shell "ps /data/data/com.x0.strai.frep/app_bin/strserv" 2^>^&1`) do (
  call :STOPIFPID %%i
)

REM ## start
echo title Close this window after Server Started. > tmp\_win.bat
echo %ADBPATH% %ARGS% shell -x ^< tmp\_script.sh >> tmp\_win.bat

title After closing the child window, Choose "N" to stop adb.
start /wait call tmp\_win.bat
%ADBPATH% kill-server
exit /b

:OFFLINE
set /P TMP="Allow USB debugging on Android device and then push enter key. (Ctrl-C to cancel) "
goto CHECKOSVER

:MULTI
setlocal ENABLEDELAYEDEXPANSION
REM # requires for counting in loop
set /A DEVNUM=0
echo Multiple Android devices found.
for /F "usebackq tokens=*" %%i in (`%ADBPATH% devices -l`) do (
  if not "%%i"=="" (
REM # ignore header; find returns ERRORLEVEL=0 for success
    echo %%i | find "List of devices attached" > NUL
    if ERRORLEVEL 1 (
      echo [!DEVNUM!] %%i
    )
    set /A DEVNUM=!DEVNUM!+1
  )
)
set /P SELNUM="Enter the number of device to setup FRep. (0 to cancel):"
REM set zero for non-numeric value
set /A SELNUM=%SELNUM%+0
set /A DEVNUM=0
set SELDEVICE=
set SAMPLEDEVICE=00000000

for /F "usebackq tokens=1" %%i in (`%ADBPATH% devices`) do (
  if not "%%i"=="" (
REM # ignore header; find returns ERRORLEVEL=0 for success
    echo %%i | find "List" > NUL
    if ERRORLEVEL 1 (
	  if "!DEVNUM!"=="%SELNUM%" (
        set SELDEVICE=%%i
		goto SELECTED
	  ) else if "%SAMPLEDEVICE%"=="00000000" (
	    set SAMPLEDEVICE=%%i
	  )
    )
    set /A DEVNUM=!DEVNUM!+1
  )
)
:SELECTED
if "%SELDEVICE%"=="" (
  echo Retry with only single Android device connection, or designate
  echo single Android device by option -s ^(single serial from above^)
  echo ex.^) win -s %SAMPLEDEVICE%
  pause
  %ADBPATH% kill-server
  exit /b 1
)
echo [%SELNUM%] %SELDEVICE% is selected.
endlocal & set ARGS=-s %SELDEVICE%
goto CHECKOSVER

:FAILED
echo Setup failed. Please check followings.
echo - Once Start FRep on your Android device.
echo - Check USB debugging Developer options on the Android device.
echo - See the troubleshooting page, http://strai.x0.com/frep/faq#setup
pause
%ADBPATH% kill-server
exit /b

REM ## return ERRORLEVEL 1 if arg is valid
:STOPIFPID
SETLOCAL
if "%1"=="" exit /b 0
echo %1 | findstr /r "^[1-9][0-9]*" > NUL
if ERRORLEVEL 1 exit /b 0
set /A SAMEIFNUM=%1*1
if "%SAMEIFNUM%"=="%1" (
  echo Running strserv PID:%1 found.
  %ADBPATH% %ARGS% shell "kill %1"
  exit /b 1
)
exit /b 0
