source /usr/share/zsh/scripts/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle archlinux
antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras

# zsh-users extras
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

# Pure prompt
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Antigen done
antigen apply

# User configuration

export PATH="$HOME/.node_modules/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"

export LANG=en_AU.UTF-8
export EDITOR='vim'

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

export WORKON_HOME=~/python-envs
source /usr/bin/virtualenvwrapper.sh

export ARCHFLAGS="-arch x86_64"

alias uni="MESA_GL_VERSION_OVERRIDE=3.2 unity-editor"

alias workspaces="~/.i3/workspaces.sh"

eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
#source '/home/robbo/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
#source '/home/robbo/google-cloud-sdk/completion.zsh.inc'
