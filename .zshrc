export TERM="xterm-256color"
DEFAULT_USER=`whoami`

export ZSH="/Users/sachin/.oh-my-zsh"

ZSH_THEME="spaceship"

ZSH_CUSTOM=$HOME/zsh_custom

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(git zsh-autosuggestions kubetail)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/Users/sachin/dev/bugsnag/infra/bugsnag-internal/velero
export PATH=/usr/local/bin:$PATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i

eval "$(direnv hook zsh)"

export EDITOR='vim'
export PATH="/usr/local/sbin:$PATH"
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
eval "$(nodenv init -)"

# Spaceship
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_TIME_SHOW=true
