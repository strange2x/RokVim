#! /bin/bash

echo "Installing RokVim";

echo "Checking if Node is Installed";

if ! command -v node &> /dev/null
then
    echo "Node not found, Please install node";
    exit;
fi

echo "Installing Packer";

git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim;

echo "Checking if config exists";

if [[ -d ~/.config/nvim ]]
then
    echo "Neovim config already existing in directory, making renaming it to nvim.old";
    mv ~/.config/nvim ~/.config/nvim.old;
fi

echo "Cloning RokVim";
git clone https://github.com/strange2x/RokVim.git ~/.config/nvim;

echo "Please run nvim and do a PackerInstall to install all the extensions.. If packer is not installed, then you can get the command from Readme in RokVim Repo. Thanks for trying out";

