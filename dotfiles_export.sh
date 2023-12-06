
mkdir -p ~/.dotfiles.old

#----

[ ! -f ~/.profile ] || mv ~/.profile ~/.dotfiles.old/

[ ! -f ~/.bashrc ] || mv ~/.bashrc ~/.dotfiles.old/
[ ! -f ~/.bash_profile ] || mv ~/.bash_profile ~/.dotfiles.old/

[ ! -f ~/.my_zsh ] || mv ~/.my_zsh ~/.dotfiles.old/
[ ! -f ~/.zshrc ] || mv ~/.zshrc ~/.dotfiles.old/


#-----

ln -f ./.profile ~/.profile

ln -f ./.bashrc ~/.bashrc
ln -f ./.bash_profile ~/.bash_profile

ln -f ./.my_zsh ~/.my_zsh
ln -f ./.zshrc ~/.zshrc


