#! /bin/bash

echo "Installing RokVim";

echo "Checking if Node is Installed";

if ! command -v node &> /dev/null
then
    echo "Node not found, Please install node";
    exit;
fi

echo "Installing ...."

