# ZSH CONFIG
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship" # agnoster, spaceship

ENABLE_CORRECTION="true"
DISABLE_LS_COLORS="true"
DISABLE_AUTO_TITLE="true"

plugins=(
  git
  aliases
  extract
  zsh-autosuggestions
  you-should-use
  colored-man-pages
  web-search
  copypath
  copyfile
  history
)

source $ZSH/oh-my-zsh.sh

# GENERAL
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

function timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

echo -n -e "\033]0;Terminal\007"

# KEYWORDS
export WSL_HOME="/home/exotic"
export WIN_HOME="/mnt/c/Users/huber"
export MEGA_DIR="$WIN_HOME/Documents/MEGA"

# ALIASES
alias wsl="cd $WSL_HOME"
alias win="cd $WIN_HOME"
alias mega="cd $MEGA_DIR"
alias ~~="cd $WIN_HOME"
alias ls="ls --color=none"
alias lal="ls -al"
alias pps="ps -e -o user,state,pid,ppid,command"

alias lzd='lazydocker'
alias npmlist="npm list -g --depth=0 --json"

fpath=(~/.zsh.d/ $fpath)

# SSH
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/exo

# CODING
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$HOME/bin:$PATH"

[ -f "/home/exotic/.ghcup/env" ] && . "/home/exotic/.ghcup/env"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export PATH="$HOME/.local/bin:$PATH"

# PACKAGES
source <(fzf --zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias tf)

# KEYBINDINGS
bindkey '^ ' autosuggest-accept

# FUNCTIONS
function devin() {
        docker pull docker.all-hands.dev/all-hands-ai/runtime:0.25-nikolaik

        docker run -it --rm --pull=always \
            -e SANDBOX_RUNTIME_CONTAINER_IMAGE=docker.all-hands.dev/all-hands-ai/runtime:0.25-nikolaik \
            -e LOG_ALL_EVENTS=true \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -v ~/.openhands-state:/.openhands-state \
            -p 3000:3000 \
            --add-host host.docker.internal:host-gateway \
            --name openhands-app \
            docker.all-hands.dev/all-hands-ai/openhands:0.25
}

function mcd() {
        mkdir -p $1 && cd $1
}

#curl https://cheat.sh/:zsh > ~/.zsh.d/_cht
fpath=(~/.zsh.d/ $fpath)
