# load config
PROSPECT=$HOME/prospect
BASHRCS=$PROSPECT/term

[[ -f $BASHRCS/bashrc.vms ]]         && . $BASHRCS/bashrc.vms
[[ -f $BASHRCS/bashrc.golang ]]      && . $BASHRCS/bashrc.golang
[[ -f $BASHRCS/bashrc.rds ]]         && . $BASHRCS/bashrc.rds
[[ -f $BASHRCS/bashrc.local ]]       && . $BASHRCS/bashrc.local
[[ -f $BASHRCS/bashrc.env ]]         && . $BASHRCS/bashrc.env
[[ -f $BASHRCS/bashrc.boot2docker ]] && . $BASHRCS/bashrc.boot2docker

# http://stackoverflow.com/questions/4755538/rvm-is-not-working-in-zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# http://stackoverflow.com/questions/5838824/how-do-i-keep-my-rvm-gemset-while-using-tmux
cd .;
