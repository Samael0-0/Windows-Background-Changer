@echo off
if exist %1 (
if %~x1==.jpg (
copy %1 %AppData%\Microsoft\Windows\Themes\TranscodedWallpaper
for %%F in (%AppData%\Microsoft\Windows\Themes\CachedFiles\*) do (copy %%F %%~nxF & copy %1 %%F & goto break)
:break
echo After you hit a key your computer will restart and your background will be changed or close this and restart later.
pause
shutdown -r -t 0
)
)
echo Drag a .jpg file to this file.
pause