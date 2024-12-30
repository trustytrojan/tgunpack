@echo off
start cloudflared access tcp -T mc.trustytrojan.dev/mods -L localhost:12345
ServerSyncClient -a localhost -p 12345 -o
