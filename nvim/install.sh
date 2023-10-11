#!/usr/bin/env bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

if [ "$(uname)" == "Darwin" ]; then
    brew install neovim
fi

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install neovim
fi

mkdir -p $HOME/.config/

ln -s nvim $HOME/.config/

echo "Follow https://dzfrias.dev/blog/neovim-unity-setup#installing-dependencies to install omnisharp"
echo "⚠️ Run :PackerSync"