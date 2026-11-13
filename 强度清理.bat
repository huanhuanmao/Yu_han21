@echo off
echo 正在强力清理 C 盘系统垃圾...
echo.

:: 清理系统临时文件
del /f /s /q %temp%\*
del /f /s /q C:\Windows\Temp\*

:: 清理日志文件
del /f /s /q C:\Windows\Logs\*
del /f /s /q C:\Windows\System32\LogFiles\*

:: 清理系统更新缓存
del /f /s /q C:\Windows\SoftwareDistribution\Download\*

:: 清理错误报告
del /f /s /q C:\ProgramData\Microsoft\Windows\WER\*

:: 清理回收站
rd /s /q C:\$Recycle.Bin
md C:\$Recycle.Bin

:: 清理预读取文件
del /f /s /q C:\Windows\Prefetch\*

:: 清理浏览器临时文件（可选）
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*"
del /f /s /q "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*"

echo.
echo C 盘清理完成！
pause
exit
