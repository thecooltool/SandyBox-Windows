@echo off
cd Utils\Xming
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "The Sandy-Box will now shutdown, please close all open files."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
pause
.\plink.exe -ssh -2 -pw machinekit machinekit@192.168.7.2 sudo poweroff
echo "Powering off the Sandy-Box..."
echo "Please wait until the green light goes out before disconnecting the power supply."
pause