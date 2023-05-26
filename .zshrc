# startup
clear
# pfetch
fortune 100% fortunes | cowsay



# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration

# Vi binding
bindkey -v

##########
# Export #
##########

# configuration
export EDITOR='nvim'
export VISUAL='codium'
export MANPAGER="sh -c 'col -bx | bat -l man -p --paging always'"
export TERM=xterm-kitty

# Path
export PATH=/home/cxa/.cargo/bin:$PATH
export PATH=/home/cxa/.local/bin:$PATH
export PATH=/home/cxa/devel/node-v18.16.0-linux-x64/bin:$PATH
export PATH=/home/cxa/.luarocks/bin:$PATH
export PATH=/home/cxa/.nix-profile/bin:$PATH
export PATH=/home/cxa/.config/emacs/bin:$PATH
export PATH=/home/cxa/Games:$PATH
export PATH=$PATH:/home/cxa/.spicetify

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
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# rusty
alias cat="bat"
alias du="dust"
alias grep="rg"
alias find="fd"

# quality of life
alias :q="exit"
alias reload="source ~/.zshrc"
alias 2ND-HDD="cd /media/cxa/2ND-HDD/"
alias dl="aria2c"

###################
# package manager #
###################

# nala / apr
alias apt="sudo apt-fast"
alias update="sudo apt-fast update && sudo apt-fast upgrade"

# nix
alias nix-in="nix-env -iA"
alias nix-un="nix-env -e"

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

###################
# Custom Function #
###################

############
# starship #
############

eval "$(starship init zsh)"

