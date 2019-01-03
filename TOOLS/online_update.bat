@echo off 

cd ..\Utils\Xming
echo y | .\plink.exe -ssh -2 -pw machinekit machinekit@192.168.7.2 echo "Connection works" || goto :ssh-error
cd ..\..\

cd ..
cd ..\System\update

rem start "SandyBox Updater" %cd%\Python\python.exe update.py
cmd /K %cd%\Python\python.exe update.py
goto :EOF

:ssh-error
echo "Connecting to SandyBox failed, please check if the network driver is installed correctly."
pause