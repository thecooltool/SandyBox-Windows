@echo off
echo "Starting ...."
echo ""
echo "  _______ _             _____            _ _______          _ "
echo " |__   __| |           / ____|          | |__   __|        | |"
echo "    | |  | |__   ___  | |     ___   ___ | |  | | ___   ___ | |"
echo "    | |  | '_ \ / _ \ | |    / _ \ / _ \| |  | |/ _ \ / _ \| |"
echo "    | |  | | | |  __/ | |___| (_) | (_) | |  | | (_) | (_) | |"
echo "    |_|  |_| |_|\___|  \_____\___/ \___/|_|  |_|\___/ \___/|_|"
echo.
echo "Please be patient ..."
echo Starting configuration Uni-print-3D
start "Xming" /b .\Xming.exe :0 -dpi 85 -clipboard -trayicon -c -multiwindow -reset -terminate -unixkill -logfile Xming.log
.\plink.exe -pw machinekit -ssh -2 machinekit@192.168.7.2 "source /etc/profile; cd ~/machinekit-configs/Uni-print-3D/ && ./run.py"