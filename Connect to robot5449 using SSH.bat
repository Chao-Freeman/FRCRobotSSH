@echo off
echo Users are admin/lvuser
echo Password:^<Internally left blank^>
echo if you want to run it in linux/Mac, run chmod +x "%~nx0"
set robot=10.54.49.2
ping %robot% -n 1 >nul
if errorlevel 1 set robot=roboRIO-5449-frc.local
set /p user=Please input what user you want to login: 
ssh %robot% -l %user%
if errorlevel 1 echo Press any key to exit...&pause>nul