#!/usr/bin/env bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"


mkdir -p $(HOME)/.tmux/plugins

git clone https://github.com/tmux-plugins/tpm $(HOME)/.tmux/plugins/tpm

ln -f .tmux.conf $HOME/.tmux.conf

tmux source $HOME/.tmux.conf

