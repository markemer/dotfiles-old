# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Variables
export SSH_PUBLIC=$HOME/.ssh/id_rsa.pub

export MACPORTS_PATH=/opt/local/bin:/opt/local/libexec/gnubin
export USERBINS_PATH=$HOME/.local/bin:/opt/bin

export PATH=$USERBINS_PATH:$MACPORTS_PATH:$PATH

export EDITOR='subl -w'


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sport='sudo port -ucpv'
alias scpan='sudo cpan'

alias ls='ls --color=auto --human-readable'
alias setfile='SetFile'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox-bin'
alias psx='ps -axwwr -o pid,user,%cpu,%mem,rss,state,start,command'
alias unsafe_chrome='open /Applications/Google\ Chrome.app/ --args --allow-file-access-from-files -–disable-web-security'
alias svn16='/usr/bin/svn'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...