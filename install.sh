#!/bin/bash
# This scripts installs all conf files
# by creating appropriate symbolic links
# cron jobs are not included.

# aria2/
mkdir -p "$HOME/.aria2/"
ln -sf "$PWD/aria2/aria2.conf" "$HOME/.aria2/.aria2.conf"

# bash/
ln -sf "$PWD/bash/bashrc" "$HOME/.bashrc"

# bin/
ln -sf "$PWD/bin" "$HOME/.local/bin"

# compton/
ln -sf "$PWD/compton/compton.conf" "$HOME/.compton"

# fish/
ln -sf "$PWD/fish" "$HOME/.config/fish"

# git/
ln -sf "$PWD/git/config" "$HOME/.gitconfig"
ln -sf "$PWD/git/ignore" "$HOME/.gitignore"
git config --global core.excludesfile '~/.gitignore'

# hg/
ln -sf "$PWD/hg/hgrc" "$HOME/.hg"

# komodo/
mkdir -p "$HOME/.komodoedit/8.0"
ln -sf "$PWD/komodo" "$HOME/.komodoedit/8.0"

# tmux/
mkdir -p "$HOME/.tmux"
mkdir -p "$HOME/.byobu"

ln -sf "$PWD/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -sf "$PWD/tmux/tmux.conf" "$HOME/.byobu/.tmux.conf"

# vim/
mv "$HOME/.vim" "$HOME/.vim.bakup"
ln -sf "$PWD/vim" "$HOME/.vim"
mv "$HOME/.vimrc" "$HOME/.vimrc.bakup"
ln -sf "$PWD/vim/vimrc" "$HOME/.vimrc"

# zsh/
ln -sf "$PWD/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$PWD/zsh/oh-my-zsh" "$HOME/.oh-my-zsh"
mv "$HOME/.oh-my-zsh/custom" "$HOME/.oh-my-zsh/custom.backup"
ln -sf "$PWD/zsh/custom" "$HOME/.oh-my-zsh/custom"

# change shell to zsh
chsh -s $(which zsh)
