@echo off

if "%1" == "" (
	echo "path to forge 1.12.2 instance required"
	exit /b 1
)

cd "%1"
winget install cloudflared

if not exist "ServerSyncClient.exe" (
	curl -LO "https://github.com/superzanti/ServerSync/releases/download/v4.3.0/ServerSyncClient.exe"
)

where java >nul 2>nul
if %errorlevel% neq 0 (
	winget install ojdkbuild.openjdk.17.jre
)

update-mods
create-tunnel
