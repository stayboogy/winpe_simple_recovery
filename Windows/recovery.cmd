@echo off 
color 4f
echo.
echo.
echo.
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo.
echo WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING
echo.
echo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo.
echo.
echo.
echo                  This will completely delete all files on the Windows volume,
echo.
echo                    and then restore Windows back to its original condition.
echo.
echo.
echo.
echo.
echo                 If this was a mistake, close this window to reboot the laptop.
echo.
echo.
echo.
echo.
echo                            If you wish to proceed with recovery
echo.
pause
echo.
echo.
echo.
echo.
echo.
echo                                      RECOVERY STARTED
echo.
echo.
echo                   Laptop will reboot itself when restore process is complete.
echo.
echo                      Please continue to wait until laptop reboots itself...
echo.
echo.
echo                                   Erasing Windows Volume...
echo.
RMDIR D:\ /S /Q
echo                                  Restoring Windows Volume...
echo.
dism /apply-image /imagefile:E:\RECOVERY\WINDOWS\recovery.wim /index:1 /applydir:D:\
echo.
echo.
echo                                    Erasing Boot Volume...
echo.
RMDIR C:\ /S /Q
echo                                    Restoring Boot Volume...
echo.
dism /apply-image /imagefile:E:\RECOVERY\WINDOWS\boot.wim /index:1 /applydir:C:\
echo.
echo.
echo.
echo                          !!!!!!!!!!!!RECOVERY COMPLETE!!!!!!!!!!!!
shutdown /r
