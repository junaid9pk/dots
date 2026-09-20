# dots (Configurations in motion)

My portable, cross-platform terminal and developer environment. 

This repository contains only the CLI and terminal-based tools that I take with me to every machine (like my work laptop), cleanly separated from my heavier, OS-specific desktop configurations.

## Contents
- **Neovim** (`nvim/`)
- **Tmux** (`tmux/`)
- **Zsh** (`zsh/`)
- **Alacritty** (`alacritty/`)
- **Btop** (`btop/`)

## Installation

This repository is designed to be managed with [GNU Stow](https://www.gnu.org/software/stow/).

```bash
# 1. Clone the repository
git clone https://github.com/junaid9pk/dots.git ~/dots
cd ~/dots

# 2. Stow the tools you want to use
stow nvim tmux zsh alacritty btop
```

*(Note: My complete Arch Linux desktop setup, including Wayland, Hyprland, and system scripts, is maintained in a separate private repository where this `dots` repo is pulled in as a submodule).*
