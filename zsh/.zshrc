export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto

# for vim mode
export KEYTIMEOUT=1
bindkey -v

plugins=(git vi-mode zsh-autosuggestions zsh-syntax-highlighting)


source $ZSH/oh-my-zsh.sh

MODE_INDICATOR="%B%F{cyan}<%b%f"

export EDITOR=nvim

[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# opencode
export PATH=/home/jd/.opencode/bin:$PATH

# System update alias
alias sysup="sudo pacman -Syu --noconfirm && yay -Syu --noconfirm"


# Added by Antigravity CLI installer
export PATH="/home/jd/.local/bin:$PATH"

# Quick launch AGY with super-memory, skills, and dotfiles context
alias brain='cd ~/code/super-memory && agy --add-dir ~/code/skills --add-dir ~/code/dotfiles -i "load context"'

# fzf integration (Fuzzy finder)
if [ -f /usr/share/fzf/key-bindings.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
fi

# zoxide integration (Smart cd)
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
fi

# Accept autosuggestions in vi insert mode
bindkey '^f' forward-char
bindkey '^e' end-of-line

# Tailscale Exit Node Toggle (Zuwayer's PC)
alias vpn-on='sudo tailscale set --exit-node=100.76.23.30'
alias vpn-off='sudo tailscale set --exit-node='
alias agy="agy --dangerously-skip-permissions"
