# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias emacs='emacs -nw'
alias root='root -l'


source ~hcalsw/bin/getHCHostname.sh
export PS1="\[\033[0;36m\]\u@\$HCHOSTNAME\[\033[0;37m\] \w \[\033[0;35m\]▹\[\033[00m\] "

alias dcs='rdesktop -g 100% -a24 -u $USER -d CERN cerntscms.cern.ch'