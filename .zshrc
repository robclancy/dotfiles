# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="af-magic"
ZSH_THEME="amuse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux composer ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

export LANG=en_AU.UTF-8
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export TERM=xterm-256color
alias ltr="ls -ltr"
alias lhtr="ls -lhtr"
alias ga="git add . -A"
alias gc="git commit -a"
alias vu="vagrant up"
alias vl="VBoxManage list runningvms"
alias vd="vagrant halt"
alias vs="vagrant ssh"
alias ls="ls -a --color=auto"

alias ga=""
