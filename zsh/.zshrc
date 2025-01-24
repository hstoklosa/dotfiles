export WIN="/mnt/c/Users/huber"
export MEGA="/mnt/c/Users/huber/Documents/MEGA"
export DOTFILES="$HOME/.dotfiles"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"
ENABLE_CORRECTION="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"

plugins=(
  git
  aliases
)

source $ZSH/oh-my-zsh.sh

export LS_COLORS=$LS_COLORS:"ow=1;34:";

export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$HOME/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

[ -f "/home/exotic/.ghcup/env" ] && . "/home/exotic/.ghcup/env"

fpath=(~/.zsh.d/ $fpath)

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH=$HOME/.local/bin:$PATH

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/exo

echo -n -e "\033]0;Terminal\007"