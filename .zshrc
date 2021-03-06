source $HOME/.bashrc

export LANG=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

# Start ssh-agent so that I can call 
eval $(ssh-agent) > /dev/null

USER="bennett"
DEFAULT_USER=`whoami`

ZSH_CUSTOM="$HOME/.config/zsh-custom"

if [ -d "$HOME/.oh-my-zsh" ]; then
  ZSH=$HOME/.oh-my-zsh
else
  ZSH=/usr/share/oh-my-zsh/
fi

ZSH_THEME="gitster"
DISABLE_AUTO_UPDATE="true"

plugins=(git)


alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

# Stay in the same folder when exiting ranger
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

export EDITOR="nvim"
export VISUAL="nvim"
export SHELL="zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.cabal/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/google-cloud-sdk"
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export N_PREFIX="$HOME/.n/"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
export NPM_TOKEN=${NPM_TOKEN:-""}

stty -ixon

export CHROME_BIN=chromium

export NODE_OPTIONS=--max_old_space_size=16384

AUTO_SUGGEST=/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ -f "$AUTO_SUGGEST" ]
then
  source $AUTO_SUGGEST
else
  source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

