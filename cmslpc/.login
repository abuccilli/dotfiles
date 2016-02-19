source /cvmfs/cms.cern.ch/cmsset_default.csh
#source /uscmst1/prod/grid/gLite_SL5.csh
#source /uscmst1/prod/grid/CRAB/crab.csh
source /cvmfs/cms.cern.ch/crab/crab.csh

#source /cvmfs/cms.cern.ch/crab3/crab.csh

#set path = ($path /uscms/home/abuccill/work/CMSSW/cms-git-tools $HOME/bin .)

alias emacs 'emacs -nw' #no window mode
alias root  'root -l'   #don't load splash screen

setenv MYEOS /eos/uscms/store/user/abuccill/

alias hn 'echo "`date` $HOSTNAME" >> ~/hostname.log'

#alias screen '\screen -dmS myscreen ; screen -rS myscreen -p 0 -X stuff hn ; screen -r'    

echo " "    
echo "Type hn to log host, especially if using screen." 
