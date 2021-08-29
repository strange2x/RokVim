#! /bin/bash

echo "Installing RokVim";

echo "Checking if Node is Installed";

if ! command -v node &> /dev/null
then
    echo "Node not found, Please install node";
    exit;
fi

echo "Installing ....";

if [[ -d ~/.config/nvim ]]
then
    echo "Neovim config already existing in directory, making renaming it to nvim.old";
    mv ~/.config/nvim ~/.config/nvim.old;
fi

echo "Cloning RokVim";
git clone https://github.com/abeeskhan/RokVim ~/.config/nvim;

echo "Please run nvim and do a PackerInstall to install all the extensions.. If packer is not installed, then you can get the command from Readme in RokVim Repo. Thanks for trying out";

