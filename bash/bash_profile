### Exports

export SSH_PUBLIC=$HOME/.ssh/id_rsa.pub

export MACPORTS_PATH=/opt/local/bin:/opt/local/libexec/gnubin
export USERBINS_PATH=$HOME/.local/bin:/opt/bin

export PATH=$USERBINS_PATH:$MACPORTS_PATH:$PATH

export EDITOR='subl -w'

### Aliases

alias sport='sudo port -ucpv'
alias scpan='sudo cpan'

alias ls='ls --color=auto --human-readable'
alias setfile='SetFile'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox-bin'
alias psx='ps -axwwr -o pid,user,%cpu,%mem,rss,state,start,command'
alias unsafe_chrome='open /Applications/Google\ Chrome.app/ --args --allow-file-access-from-files -–disable-web-security'
alias svn16='/usr/bin/svn'

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

### Functions for Shell
cdp() {
	cd `port dir ${1}` 
}

function unsetCENV() {
	unset CC
	unset CXX
  unset CFLAGS
  unset CPPFLAGS
  unset LDFLAGS
	unset DYLD_LIBRARY_PATH
}

function printCENV() {
	echo "ARCH=$ARCH"
	echo "CC=$CC"
	echo "CXX=$CXX"
	echo "CFLAGS=$CFLAGS"
	echo "CPPFLAGS=$CPPFLAGS"
	echo "LDFLAGS=$LDFLAGS"
	echo "DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH"
}

function pman() {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

function tman() {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | subl
}

function copyid() {
	ssh ${1} 'cat >> .ssh/authorized_keys' < $SSH_PUBLIC
}

function enable_gtkosx() {
	export PATH=/opt/gtk/bin:$HOME/.local/bin:$PATH
}
