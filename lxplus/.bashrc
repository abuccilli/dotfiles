# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export WORKSPACE=/afs/cern.ch/work/a/abuccill

alias WS='cd $WORKSPACE'

alias emacs='emacs -nw'