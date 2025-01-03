# tgunpack mc server setup guide

## what you need

1. a forge 1.12.2 instance. you can use any launcher to do this but [prismlauncher](https://prismlauncher.org/) is great and does it all for you. install it by running `winget install prismlauncher` __in command prompt__
2. the cmd scripts in the rest of this repo. download them all into your forge 1.12.2 instance folder (e.g. `C:\path\to\.minecraft`), and run `tgunpack-setup.cmd`.

## KNOWN PROBLEMS

- [ServerSync](https://github.com/superzanti/ServerSync) requires java 17 to be on your system, and an existing java 8 installation will conflict with it. the [`tgunpack-setup.cmd`](./tgunpack-setup.cmd) script installs java 17 for you, but you may still need to uninstall other java versions for ServerSync to run.

- some countries aren't allowed to use access cloudflared tunnels... if you get an error in a cloudflared window saying "the remote denied access", use a VPN.

## to actually connect to the server in-game

you need to run `create-tunnel.cmd`. a command prompt window running `cloudflared` will open up. **you need to keep it open to connect to the server in-game.** open mc and direct connect to `localhost` and you should be in.

`tgunpack-setup.cmd` does it for you initially, but if the server ever gets new mods, just run `update-mods.cmd`.
