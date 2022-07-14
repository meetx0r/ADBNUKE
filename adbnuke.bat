@echo off
adb start-server 
adb devices
call :menu
exit /b %Errorlevel%

:menu
cls 
echo #####################
echo       ADBNUKE
echo #####################
echo == Select Option ==
echo [1] Xiaomi Debloater
echo [2] Samsung Debloater
echo [3] Google Debloater
echo [4] Chinese apps debloater
echo [5] Exit
set /p MYCHOICE="Enter: "
echo Your entered: %MYCHOICE%
if '%MYCHOICE%' == '1' goto xiaomi
if '%MYCHOICE%' == '2' goto samsung
if '%MYCHOICE%' == '3' goto google
if '%MYCHOICE%' == '4' goto chinese
if '%MYCHOICE%' == '5' exit /b
if '%MYCHOICE%' != ('1 2 3 4 5') goto menu
pause

:xiaomi
echo ----- Xiaomi Debloater ------
for /f "tokens=* delims=" %%a in (xiaomi.txt) do (
   adb shell "pm uninstall --user 0 " %%a
)
pause 
goto menu


:samsung
echo ----- Samsung Debloater ------
for /f "tokens=* delims=" %%a in (samsung.txt) do (
   adb shell "pm uninstall --user 0 " %%a
)
pause 
goto menu

:google
echo ----- Google Debloater ------
for /f "tokens=* delims=" %%a in (google.txt) do (
   adb shell "pm uninstall --user 0 " %%a
)
pause 
goto menu

:chinese
echo ----- Chinese apps Debloater ------
for /f "tokens=* delims=" %%a in (chinese.txt) do (
   adb shell "pm uninstall --user 0 " %%a
)
pause 
goto menu
