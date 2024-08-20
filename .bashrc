# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

case $- in
    *i*) ;;
    *) return;;
esac



if [ -f ~/.which_env ]
then
    source ~/.which_env
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
# shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=1000
# HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

export EDITOR='vim'
# set -o vi
# TERM=xterm-256color
# TERM=xterm

# allows Ctrl-S to do fowards search instead of freezing input: https://github.com/mintty/wsltty/issues/155
stty -ixon

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# only ask for my SSH key passphrase once
if [ -f ${HOME}/.ssh-agent ]; then
    . ${HOME}/.ssh-agent >/dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`ps -a|egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
    /usr/bin/ssh-agent > ${HOME}/.ssh-agent
    . ${HOME}/.ssh-agent > /dev/null
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

# git completions
if [ -f /usr/share/bash-completion/completions/git ] ; then
    source /usr/share/bash-completion/completions/git
fi

# source ~/.git-prompts.sh
source ~/.git-prompt.sh

# Add bash colors/PS1
if [ -f ~/.bash_colors ]; then
    source ~/.bash_colors
fi

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

# Add environment-specific files
if [ $ALIAS_FILE ] && [ -f $ALIAS_FILE ]; then
    source $ALIAS_FILE
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=$PATH:/Users/justjae/.toolbox/bin
source /Users/justjae/.brazil_completion/bash_completion
