@echo off 

cd ..
cd ..\System\update

start "Sandy-Box Updater" "cmd /K %cd%\PythonPortable\App\python.exe update.py"