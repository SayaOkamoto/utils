if [ -f ~/.git-completion.bash ]; then
source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
source ~/.git-prompt.sh
fi

alias ll='ls -l'
alias vi='vim'

PS1="[\e[1;36m\]\h@\e[1;33m\]\u:\e[0;35m\]\W\e[0;31m\]\$(__git_ps1)\e[1;37m\]]\$ "
