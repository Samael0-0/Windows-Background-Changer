@echo off
if not exist %1 ( goto badfile )
if %~x1 neq .jpg ( goto badfile )
copy %1 %AppData%\Microsoft\Windows\Themes\TranscodedWallpaper
for %%F in ( %AppData%\Microsoft\Windows\Themes\CachedFiles\* ) do ( copy %%F %%~nxF & copy %1 %%F & goto break )
:break
echo After you hit a key your computer will restart and your background will be changed or close this and restart later.
pause
shutdown -r -t 0
:badfile
echo Drag a .jpg file to this file.
pause
