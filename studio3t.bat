:: 文件路径 C:\Users\zhuqingxu\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

@echo off
ECHO Reset the use date of Studio 3T......
REG DELETE "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\3t\mongochef\enterprise" /f
RMDIR /s /q %USERPROFILE%\.3T\studio-3t\soduz3vqhnnja46uvu3szq--
RMDIR /s /q %USERPROFILE%\.3T\studio-3t\Lwm3TdTxgYJkXBgVk4s3
RMDIR /s /q %USERPROFILE%\AppData\Local\t3\dataman\mongodb\app\AppRunner
RMDIR /s /q C:\Users\Public\t3\dataman\mongodb\app\AppRunner
RMDIR /s /q %USERPROFILE%\AppData\Local\Temp\t3\dataman\mongodb\app\AppRunner
RMDIR /s /q %USERPROFILE%\AppData\Local\ftuwWNWoJl-STeZhVGHKkQ--
RMDIR /s /q %USERPROFILE%\AppData\Local\Temp\ftuwWNWoJl-STeZhVGHKkQ--
RMDIR /s /q %USERPROFILE%\.cache\ftuwWNWoJl-STeZhVGHKkQ--
ECHO Reset is complete, press any key to exit......
pause>nul
EXIT
