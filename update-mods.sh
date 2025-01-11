cloudflared access tcp -T mc.trustytrojan.dev/mods -L localhost:12345 &
java -jar ServerSync-4.3.0-all.jar -a localhost -p 12345 -o
kill $!