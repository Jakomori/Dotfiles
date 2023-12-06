
#	.profile
#	Included in both .bashrc  and .zsh

alias ls='ls --color=auto'
alias la='ls -la'
alias grep='grep --color=auto'
alias home='cd ~'
alias root='cd /'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias cd..='cd ..'

alias eamcs='emacs'

alias rcp='rsync -azh -AUX --numeric-ids --inplace --info=progress2'
#alias cp='rcp'

alias jump='z'
alias cat='bat --style=plain'

alias lastyay='rg installed /var/log/pacman.log | tail -10'

alias git commit -m='gimmit'

export EDITOR=emacs
export GREP_OPTIONS=' — color=auto'
