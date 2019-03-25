#!/bin/bash

echo "Configurateing the whole system for this vimrc configuration..."
echo "Installing needed apps to work..."


sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update
sudo apt install -y python3.6 python3-dev python3-pip python3-venv software-properties-common build-essential cmake git vim-tiny

pip3 install jedi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

# Configurate YouCompleteMe for all langs
cd $HOME/.vim/bundle/YouCompleteMe
python3 install.py --all
