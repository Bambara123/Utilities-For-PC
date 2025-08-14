@echo off
set "DownloadDir=C:\Users\Kavindu Bambaragama\Downloads"

:check
echo Checking for active downloads in "%DownloadDir%"...
if exist "%DownloadDir%\*.crdownload" (
    echo Download in progress. Waiting 30 seconds...
    timeout /t 30 >nul
    goto check
)
echo All downloads completed. System will shut down in 60 seconds.
echo Press CTRL+C to cancel...
shutdown /s /f /t 60
pause
