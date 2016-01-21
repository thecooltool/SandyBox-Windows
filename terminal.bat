@echo off
cd Utils\Xming
start "Xming" /b .\Xming.exe :0 -dpi 85 -clipboard -trayicon -c -multiwindow -reset -terminate -unixkill -logfile Xming.log
.\plink.exe -pw machinekit -ssh -2 -X  machinekit@192.168.7.2 lxterminal 
cd ..\..

