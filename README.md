dotfiles.git
============
Clone and run this on a new EC22 instance running Ubuntu 13.10 to
configure your `zsh` and `emacs` development environment as follows:


```sh
cd $HOME
git clone https://github.com/coddeys/dotfiles.git
ln -sb dotfiles/.tmux.conf .
ln -sb dotfiles/.zshrc .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
```

See also http://github.com/coddeys/setup to install prerequisite
programs. 
