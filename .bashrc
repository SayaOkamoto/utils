export PATH=/usr/local/sbin:$PATH # for Homebrew
export PATH=/usr/local/bin:$PATH  # for Homebrew
export SVN_EDITOR=vim

if [ -f ~/.git-completion.bash ]; then
source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
source ~/.git-prompt.sh
fi

alias ll='ls -l'
alias vi='vim'

PS1="[\e[1;36m\]\h@\e[1;33m\]\u:\e[0;35m\]\W\e[0;31m\]\$(__git_ps1)\e[1;37m\]]\$ "

WORKON_HOME="~/.virtualenvs"
VIRTUALENVWRAPPER_SCRIPT="/usr/local/bin/virtualenvwrapper.sh"
VIRTUALENVWRAPPER_PYTHON="/usr/local/Cellar/python/2.7.8/bin/python"
VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"
VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--no-site-packages"
test -f $VIRTUALENVWRAPPER_SCRIPT && source $VIRTUALENVWRAPPER_SCRIPT

function _update_ps1() {
export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
    }

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
