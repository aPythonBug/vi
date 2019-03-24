#!/bin/bash

echo "Configurateing the whole system for this vimrc configuration..."
echo "Installing needed apps to work..."

sudo apt install -y software-properties-common build-essential cmake python3-dev python3-pip python3-venv git vim-tiny

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
sudo apt-get install python3.6

pip3 install jedi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./vimrc ~/.vim/vimrc
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall

# Configurate YouCompleteMe for all langs
cd $HOME/.vim/bundle/YouCompleteMe
python3 install.py --all
