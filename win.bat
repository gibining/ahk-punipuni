@echo off
set ARGS=%*
set ADBPATH=bin\adb

REM ## initialize
cd "%~dp0"
if not exist tmp mkdir tmp
if exist tmp\_win.bat del tmp\_win.bat
if exist tmp\_script.sh del tmp\_script.sh
title FRep Setup Tool(win)
%ADBPATH% kill-server
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

REM ## branch by Android version
if %ANDROIDVER% geq 26 (
  echo Switching to win_alt.bat for Android 8.0 or later.
  echo - Keep USB debugging: ON.
  echo - Availablity after USB disconnection depends on current connection mode.
  if not exist "tmp\confirm" goto CONFIRM8
  win_alt.bat %ARGS%
  exit /b
) else if %ANDROIDVER% geq 19 (
  echo Switching to win_alt.bat for Android 4.4 or later.
REM ## start in same cmd window
  win_alt.bat %ARGS%
  exit /b
)

set DEFPUSHPATH=/data/data/com.x0.strai.frep/app_bin/setup.sh
set PUSHPATH=%DEFPUSHPATH%
:PUSH
%ADBPATH% %ARGS% push bin\setup.sh %PUSHPATH%
REM ## if failed to push, with permission denied, retry with another path
if ERRORLEVEL 1 (
  for /F "usebackq tokens=*" %%i in (`%ADBPATH% %ARGS% push bin\setup.sh %PUSHPATH% 2^>^&1`) do (
    echo %%i | find "denied" > NUL
    if not ERRORLEVEL 1 (
      if %PUSHPATH%==%DEFPUSHPATH% (
        REM ## retry with tmp dir
        set PUSHPATH=/data/local/tmp/setup.sh
        goto PUSH
      )
    )
  )
  goto FAILED
)

echo sh %PUSHPATH% ^& > tmp\_script.sh
echo @echo off > tmp\_win.bat
echo title Close this window after Server Started. >> tmp\_win.bat
echo echo If Permission denied error is shown, try win_alt.bat script. >> tmp\_win.bat
echo %ADBPATH% %ARGS% shell ^< tmp\_script.sh >> tmp\_win.bat

:STARTBAT
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

:CONFIRM8
echo   Set USB connection mode as Charging ^(or File Transfer on specific devices^).
echo. 
set /P CONFIRM="Push Enter after confirmation. (Type 1 to skip confirmation from next time):"
if "%CONFIRM%"=="1" (
  echo Confirmation will be skipped from next time.
  type nul >"tmp\confirm"
)
win_alt.bat %ARGS%
exit /b
  
:FAILED
echo Setup failed. Please check followings.
echo - Once Start FRep on your Android device.
echo - Check USB debugging Developer options on the Android device.
echo - See the troubleshooting page, http://strai.x0.com/frep/faq#setup
pause
%ADBPATH% kill-server
exit /b
