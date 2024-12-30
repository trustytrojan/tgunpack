# tgunpack mc server setup guide

ok to connect to my mc server youre gonna need these things:
1. a forge 1.12.2 instance. you can use any launcher to do this but [prismlauncher](https://prismlauncher.org/) is great and does it all for you. install it by running `winget install prismlauncher` __in command prompt__
2. the cmd scripts in the rest of this repo. download them all into your forge 1.12.2 instance folder (e.g. `C:\path\to\.minecraft`), and run `tgunpack-setup.cmd`.

**to actually connect to the server in-game** you need to run `create-tunnel.cmd`. a command prompt window running `cloudflared` will open up. **you need to keep it open to connect to the server in-game.** open mc and direct connect to `localhost` and you should be in.

`tgunpack-setup.cmd` does it for you initially, but if the server ever gets new mods, just run `update-mods.cmd`.
