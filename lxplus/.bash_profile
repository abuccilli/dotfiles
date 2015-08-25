# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

source /afs/cern.ch/cms/ccs/wm/scripts/Crab/crab.sh

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

#PATH=/afs/cern.ch/work/a/abuccill/private/CMSSW/git_tools/cms-git-tools:$PATH

export PATH
