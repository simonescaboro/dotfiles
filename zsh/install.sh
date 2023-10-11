#!/usr/bin/env bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -f .zshrc $HOME/.zshrc
ln -f .zshrc.pre-oh-my-zsh $HOME/.zshrc.pre-oh-my-zsh
ln -f .zshenv $HOME/.zshenv
