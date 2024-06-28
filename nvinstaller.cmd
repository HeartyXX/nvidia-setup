@echo off 
color a
start "" "https://github.com/HeartyXX/nvidia-setup/raw/main/NVCleanstall_1.16.0.exe" >nul
timeout /t 5 >nul
taskkill /f /t /im chrome.exe >nul
taskkill /f /t /im opera.exe >nul
cls
CHOICE /C YN /M "Do you need help by installing the driver?"
IF %ERRORLEVEL% EQU 1 (
goto h 
)

goto t

:h 
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/1.png" >nul
cls
echo ----------------------------------------------------
echo - 1) Do you want to clip?     (GeForce Experience) -
echo - 2) Do you want Driver only? (Driver Only)        -
echo ----------------------------------------------------
echo.
echo ------------------------------
echo - PLEASE READ THIS CAREFULLY -
echo ------------------------------
timeout /t 2 /nobreak >nul
echo For the best Performance and less input delay i recommend to select [Driver only]
echo but if u want to clip than select [GeForce Experience]
echo.
echo.
timeout /t 3 /nobreak >nul
set /p menu2=:
if %menu2% EQU 1 goto g
if %menu2% EQU 2 goto d


:g 
cls
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/2g.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/3g.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/4g.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/5g.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/last.png" >nul
goto t2


:d 
cls
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/2.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/3.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/4.png" >nul
start "" "https://github.com/HeartyXX/nvidia-setup/blob/main/last.png" >nul
goto t2

:t2 
cls
CHOICE /C YN /M "Do you want tweaks?"
IF %ERRORLEVEL% EQU 1 (
goto t3 
)

goto s

:t3 
cls
start "" "https://github.com/HeartyXX/nvidia-setup/raw/main/NVIDIA.7z" >nul
cls
timeout /t 5 >nul
cls
start %homepath%\"downloads"\"NVIDIA.7z"
cls
goto s


:t 
cls
CHOICE /C YN /M "Do you want tweaks?"
IF %ERRORLEVEL% EQU 1 (
goto t1 
)


goto s

:t1 
cls
start "" "https://github.com/HeartyXX/nvidia-setup/raw/main/NVIDIA.7z" >nul
cls
timeout /t 5 >nul
taskkill /f /t /im chrome.exe >nul
taskkill /f /t /im opera.exe >nul
cls
start %homepath%\"downloads"\"NVIDIA.7z"
cls



:s 
cls
 echo                __  __                         __              __                              __
 echo               /\ \/\ \                       /\ \__          /\ \__                          /\ \     
 echo               \ \ \_\ \     __     __    _ __\ \ ,_\ __  __  \ \ ,_\ __  __  __    __     __ \ \ \/'\     ____   
 echo                \ \  _  \  /'__`\ /'__`\ /\`'__\ \ \//\ \/\ \  \ \ \//\ \/\ \/\ \ /'__`\ /'__`\\ \ , /    /',__\   
 echo                 \ \ \ \ \/\  __//\ \L\.\\ \ \/ \ \ \\ \ \_\ \  \ \ \\ \ \_/ \_/ /\  __//\ \L\.\\ \ \\`\ /\__, `\  
 echo                  \ \_\ \_\ \____\ \__/.\_\ \_\  \ \__\/`____ \  \ \__\ \___x___/\ \____\ \__/.\_\ \_\ \_\/\____/ 
 echo                   \/_/\/_/\/____/\/__/\/_/\/_/   \/__/`/___/\ \  \/__/\/__//__/  \/____/\/__/\/_/\/_/\/_/\/___/
 echo                                                          /\___/
 echo                                                          \/__/
echo      Thanks for chosing my Service
timeout /t 1 >nul
start %homepath%\"Downloads"\"NVCleanstall_1.16.0.exe"
timeout /t 5 >nul
del /f "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\nvinstaller.cmd"
goto e


:e
exit