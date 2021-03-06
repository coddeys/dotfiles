ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git archlinux tmux)

source $ZSH/oh-my-zsh.sh

export PATH=~/.npm-global/bin:$PATH

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

. $HOME/anaconda3/etc/profile.d/conda.sh
