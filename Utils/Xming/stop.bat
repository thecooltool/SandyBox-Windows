@echo off
echo "Stopping configuration..."
start "Xming" /b .\Xming.exe :0 -dpi 85 -clipboard -trayicon -c -multiwindow -reset -terminate -unixkill -logfile Xming.log
.\plink.exe -pw machinekit -ssh -2 machinekit@192.168.7.2 "source /etc/profile; pkill -f run.py"