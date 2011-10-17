#!/bin/sh


BACKUP_DIR=~/.sysettings

# Do backup first
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir  $BACKUP_DIR
fi
cp ~/.bash_profile ~/.bashrc $BACKUP_DIR
cp ~/.vimrc $BACKUP_DIR
cp -r ~/.vim $BACKUP_DIR


# Install shell scripts.
cp bash/.bashrc bash/.bash_profile  ~/
cp -r bash/.bashrc.d ~/
if [ -r ~/.profile ]; then
    ln -sf ~/.bash_profile ~/.profile
fi


# Install vim files.
cp vim/.vimrc vim/.gvimrc ~/
cp -r vim/.vim ~/
