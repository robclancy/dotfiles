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

export PATH="$HOME/.node_modules/bin:$PATH"

export LANG=en_AU.UTF-8
export EDITOR='vim'
export WORKON_HOME=~/python-envs
source /usr/bin/virtualenvwrapper.sh

#export PIN_API_URL=api-postedin.dev:8000

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

alias uni="MESA_GL_VERSION_OVERRIDE=3.2 unity-editor"

alias ga=""

alias workspaces="~/.i3/workspaces.sh"

alias work="i3-msg append_layout .i3/workspace-3.json && subl3 -n . && gnome-terminal --working-directory=$(pwd) && gnome-terminal --working-directory=$(pwd) && exit"

alias phpwork="i3-msg append_layout .i3/workspace-3.json && phpstorm.sh . && gnome-terminal && gnome-terminal && exit"

alias behat="touch storage/acceptance.sqlite && vendor/bin/behat --colors -vv"

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
source '/home/robbo/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
source '/home/robbo/google-cloud-sdk/completion.zsh.inc'
