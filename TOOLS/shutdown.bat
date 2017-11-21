@echo off
cd ..
cd Utils\Xming
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "The Sandy-Box will now shutdown, please close all open files."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
pause
echo y | .\plink.exe -ssh -2 -pw machinekit machinekit@192.168.7.2 sudo poweroff || goto :ssh-error
echo "Powering off the Sandy-Box..."
echo "Please wait until the green light goes out before disconnecting the power supply."
pause
goto :EOF

:ssh-error
echo "Connecting to SandyBox failed, please check if the network driver is installed correctly."
pause