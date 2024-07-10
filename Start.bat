@ECHO OFF

REM Đặt mã hóa ký tự của bảng điều khiển thành UTF-8
CHCP 65001 > NUL
CD /D "%~dp0"

REM Thiết lập các biến môi trường
SETLOCAL ENABLEEXTENSIONS
SET KEY_NAME="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
SET VALUE_NAME=HideFileExt

REM Kiểm tra và thay đổi cài đặt ẩn đuôi tệp tin
FOR /F "usebackq tokens=1-3" %%A IN (`REG QUERY %KEY_NAME% /v %VALUE_NAME% 2^>nul`) DO (
    SET ValueName=%%A
    SET ValueType=%%B
    SET ValueValue=%%C
)

IF /I "%ValueValue%" NEQ "0x0" (
    ECHO Unhiding file extensions...
    REG ADD %KEY_NAME% /v %VALUE_NAME% /t REG_DWORD /d 0 /f
)

ENDLOCAL

REM Kiểm tra và chạy tệp run.py bằng Python
IF EXIST "%SYSTEMROOT%\py.exe" (
    CMD /K "%SYSTEMROOT%\py.exe -3 run.py"
    EXIT
)

python --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO nopython

CMD /K python run.py
GOTO end

:nopython
ECHO ERROR: Python has either not been installed or not added to your PATH.

:end
PAUSE