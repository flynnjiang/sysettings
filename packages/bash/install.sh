cp -rf .bashrc .bashrc.d .bash_profile ~/
if [ -r ~/.profile ]; then
    ln -sf ~/.bash_profile ~/.profile
fi
