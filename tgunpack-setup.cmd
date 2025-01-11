@echo off

echo "Current path: %PWD%"
set /p USER_INPUT="Press Enter if you are sure this is your Forge 1.12.2 instance folder"

where cloudflared >nul 2>nul
if %errorlevel% neq 0 (
	winget install cloudflared
)

if not exist "ServerSync-4.3.0-all.jar" (
	curl -LO "https://github.com/superzanti/ServerSync/releases/download/v4.3.0/ServerSync-4.3.0-all.jar"
)

where java >nul 2>nul
if %errorlevel% neq 0 (
	winget install ojdkbuild.openjdk.17.jre
)

update-mods
create-tunnel
