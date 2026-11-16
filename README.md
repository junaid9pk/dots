# Configurations in motion


This repository contains only the CLI and terminal-based tools that I take with me to every machine.

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

## Requirements

- **Neovim >= 0.12** — the config tracks the `main` branch of nvim-treesitter, which dropped 0.11 support
- **tree-sitter-cli >= 0.26**, a C compiler, `curl` and `tar` — nvim-treesitter `main` compiles parsers with `tree-sitter build`. Distro packages are often too old; grab the binary from the [tree-sitter releases](https://github.com/tree-sitter/tree-sitter/releases) if so
- **zsh** with [oh-my-zsh](https://ohmyz.sh/) plus the `zsh-autosuggestions` and `zsh-syntax-highlighting` custom plugins, `fzf`, `zoxide`
- **tmux** with [tpm](https://github.com/tmux-plugins/tpm) cloned to `~/.tmux/plugins/tpm`, and [gitmux](https://github.com/arl/gitmux) in `~/go/bin` for the status bar

Machine-specific shell config goes in `~/.zshrc.local` (sourced last) and secrets in `~/.zshenv.local`; neither is tracked.

*(Note: My complete Arch Linux desktop setup, including Wayland, Hyprland, and system scripts, is maintained in a separate private repository where this `dots` repo is pulled in as a submodule).*
