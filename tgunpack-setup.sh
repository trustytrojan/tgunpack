if ! type cloudflared; then
	echo "cloudflared not installed, please install it with your package manager or go here: https://github.com/cloudflare/cloudflared"
	exit 1
fi

if ! type java; then
	echo "java not installed, please install it with your package manager"
	exit 1
fi

echo "Current path: $PWD"
read -p "Press Enter if you are sure this is your Forge 1.12.2 instance folder"

if [ ! -f ServerSync-4.3.0-all.jar ]; then
	curl -LO "https://github.com/superzanti/ServerSync/releases/download/v4.3.0/ServerSync-4.3.0-all.jar" ||
		wget "https://github.com/superzanti/ServerSync/releases/download/v4.3.0/ServerSync-4.3.0-all.jar"
fi

. update-mods.sh
. create-tunnel.sh
