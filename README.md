# Installation-Command-Compiles

tar -xzf /home/him/Downloads/lite-xl-v2.1.5-addons-linux-x86_64-portable.tar.gz

rm -rf $HOME/.local/share/lite-xl $HOME/.local/bin/lite-xl

mkdir -p $HOME/.local/bin && cp lite-xl $HOME/.local/bin/

mkdir -p $HOME/.local/share/lite-xl && cp -r data/* $HOME/.local/share/lite-xl/

echo -e 'export PATH=$PATH:$HOME/.local/bin' >> $HOME/.bashrc

PATH=$HOME/.local/bin:$PATH

xdg-desktop-menu forceupdate
