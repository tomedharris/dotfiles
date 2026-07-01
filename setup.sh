#!/usr/bin/env bash
set -e

DOTFILES="${DOTFILES:-$HOME/Projects/dotfiles}"

ln -sfn "$DOTFILES/nvim" "$HOME/.config/nvim"
ln -sfn "$DOTFILES/.tmux.conf" "$HOME/.tmux.conf"
ln -sfn "$DOTFILES/.tmux" "$HOME/.tmux"
