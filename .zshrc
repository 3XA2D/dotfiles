# startup
clear
# pfetch
fortune 100% fortunes | cowsay

# zinit
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# User configuration

# Vi binding
bindkey -v

###########
# History #
###########
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

##########
# Export #
##########

# configuration
export EDITOR='lvim'
export VISUAL='lvim'
export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"

# Path
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.luarocks/bin:$PATH
export PATH=$HOME/.config/emacs/bin:$PATH
export PATH=$HOME/Games:$PATH
export PATH=$HOME/Dev/Flutt/flutter/bin:$PATH
export PATH=$HOME/Dev/android-studio/bin:$PATH
export PATH=$HOME/.config/script:$PATH
export PATH=$PATH:$HOME/.spicetify

# Obsidian REST api
# In your .bashrc or .zshrc
export OBSIDIAN_REST_API_KEY="354dc39e87584395e56e4b33e3f3b4a37ec01f664b712478749be3f581a02556"

#########
# Alias #
#########

# list file
alias l="exa --icons"
alias ls="exa --icons"
alias la="exa -a --icons"
alias ll="exa -alFh --icons"
alias tree="exa --tree -alFh"

# editor
alias v="lvim"
alias vi="lvim"
alias vim="lvim"
alias nvim="lvim"

# rusty
alias cat="bat"
alias du="dust"
alias grep="rg"
alias find="fd"

# quality of life
alias :q="exit"
alias reload="source ~/.zshrc"
alias 2ND-HDD="cd /run/media/cxa/2ND-HDD/"
alias dl="aria2c"
alias ..="cd .."

# spfetch
alias spf="while sleep 1; do spfetch > /tmp/spf; clear; /bin/cat /tmp/spf; done"

###################
# package manager #
###################

# nala / apt
alias apt="nala"
alias update="nala upgrade"
# alias update="sudo dnf update"

# nix
# alias nix-in="nix-env -iA"
# alias nix-un="nix-env -e"

# pacstall
alias pac="pacstall"
autoload bashcompinit
bashcompinit
source /usr/share/bash-completion/completions/pacstall

#######
# Fzf #
#######

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tokyonight
	export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
	--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
	--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
	--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
	--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

##########
# Zoxide #
##########

eval "$(zoxide init --cmd cd zsh)"

###################
# Custom Function #
###################

##########
# prompt #
##########

# eval "$(starship init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/omp/tokyo.toml)"

