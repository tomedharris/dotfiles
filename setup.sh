#!/usr/bin/env bash
set -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/Projects/dotfiles}"

ln -sfn "$DOTFILES_PATH/.zshrc" "$HOME/.zshrc"
ln -sfn "$DOTFILES_PATH/nvim" "$HOME/.config/nvim"
ln -sfn "$DOTFILES_PATH/.tmux.conf" "$HOME/.tmux.conf"
ln -sfn "$DOTFILES_PATH/.tmux" "$HOME/.tmux"
