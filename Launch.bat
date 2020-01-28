::This is the main file you must run on the 
color 4
wscript.exe \addon.vbs file.bat
md %~d0\adv\logs
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-3 delims=/:/ " %%a in ('time /t') do (set mytime=%%a-%%b-%%c)
set mytime=%mytime: =% 
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
@echo Script Launched :: %mydate%_%mytime% :: %ComputerName% :: %USERNAME% :: %USERDOMAIN% :: Windows %version%>> \adv\logs\log
@echo Script Launched, Date_Time: %mydate%_%mytime%, Device: %ComputerName% (Windows %version%), Username: %USERNAME%, UserDomain: %USERDOMAIN%>> \adv\logs\%ComputerName%_%mytime%
color 2
@echo Created logs.