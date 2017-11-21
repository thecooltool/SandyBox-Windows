@echo off
cd..
cd Utils\Xming
start "Xming" /b .\Xming.exe :0 -dpi 85 -clipboard -trayicon -c -multiwindow -reset -terminate -unixkill -logfile Xming.log || goto :xmin-error
echo y | .\plink.exe -pw machinekit -ssh -2 -X  machinekit@192.168.7.2 lxterminal || goto :ssh-err
cd ..\..
goto :EOF

:xming-error
echo "Starting Xming failed, please check your permissions."
pause
goto :EOF

:ssh-error
echo "Connecting to SandyBox failed, please check if the network driver is installed correctly."
pause