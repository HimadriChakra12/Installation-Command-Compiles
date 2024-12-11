echo "check if snap spotify is installed..."
snap list | grep spotify
read -p "Is it installed? [Y/N] " confirm
if[["$confirm"=~^[Yy]$]]; then
	sudo snap remove spotify
	echo "Succesfully removed spotify snap"
}
echo "Installing CUrl"
sudo apt install curl
echo "Installing CUrl is Completed. Now Adding Spotify Repo..."
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearnor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
echo "Repository Added"
echo "Installing Spotify..."
sudo apt-get update && sudo apt-get install spotify-client
echo "Modding for Spicetify Access...."
Sudo chmod a+wr /usr/share/spotify
Sudo chmod a+wr /usr/share/spotify/apps -R
echo "Installing Spicetify..."
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
echo "Open spotify And Log In"

