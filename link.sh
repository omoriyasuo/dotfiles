#!/bin/bash

ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.zshrc ~/.zshrc
# ln -sf ~/dotfiles/.vimrc ~/.vimrc
# ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/hyper/.hyper.js ~/.hyper.js
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sf ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
ln -sf ~/dotfiles/karabiner/assets/complex_modifications/1572145077.json ~/.config/karabiner/assets/complex_modifications
ln -sf $(ls -d /usr/local/bin/* | grep "/g++-" | sort -r | head -n1) /usr/local/bin/g++
