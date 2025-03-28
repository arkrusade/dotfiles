# export SHELL=/usr/bin/zsh
source ~/.bashrc

alias mwinit="mwinit -o"
alias apollo="/apollo/env/ApolloCommandLine/bin/apollo"

# Allows capital fixes in tab autocomplete
# 1. Initialize the Zsh completion system
autoload -Uz compinit && compinit

# 2. Set up mise for runtime management
eval "$(/home/justjae/.local/bin/mise activate zsh)"

# 3. Source mise completions
source ~/.local/share/mise/completions.zsh

# 4. Source any additional completions
source /home/justjae/.brazil_completion/zsh_completion

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
export PATH=$PATH:/home/justjae/.toolbox/bin
# Enable autocompletion for mechanic.
# [ -f "$HOME/.local/share/mechanic/complete.zsh" ] && source "$HOME/.local/share/mechanic/complete.zsh"

# For git in prompt
## Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
## Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'


##### ZSH SHELL OPTIONS #####

# Add to HISTFILE on command, not just on shell exit
setopt -o sharehistory
setopt INC_APPEND_HISTORY

# Set interactive comments on (#)
setopt interactivecomments

# Set up the prompt (with colors, git branch name)
setopt PROMPT_SUBST
autoload -U colors && colors
# Set the prompt
# [%D{%d/%m/%y %H:%M:%S}]
PS1='%{$fg[magenta]%}[%D{%H:%M:%S}] %{$fg[cyan]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}${vcs_info_msg_0_} '$'\n''%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}$ '
eval

# # changes run-help to act like bash help
# unalias run-help
# autoload run-help
# HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
# alias help=run-help



# allows backspace to delete uninserted characters
bindkey -v '^?' backward-delete-char

# ctrl-r, ctrl-s to search forwards and backwards through history
# bindkey -M vicmd '/' history-incremental-search-backward
# bindkey -M vicmd '?' history-incremental-search-forward
bindkey -M viins ^R history-incremental-search-backward
bindkey -M viins ^S history-incremental-search-forward

# if you wish to use IMDS set AWS_EC2_METADATA_DISABLED=false

# PATH="$PATH:/usr/local/bin"

export PATH="/apollo/env/envImprovement/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3.0/bin:$PATH"
export PATH="/apollo/env/AmazonAwsCli/bin:$PATH"

# export PATH=$PATH:/Users/justjae/.toolbox/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home"
# source /Users/justjae/.brazil_completion/zsh_completion
export PERSONAL_BINDLE_ID=amzn1.bindle.resource.35vyraozojazy7aslgidnxrsq


# if you wish to use IMDS set AWS_EC2_METADATA_DISABLED=false

export AWS_EC2_METADATA_DISABLED=true

yum -q list installed tmux &>/dev/null && echo uninstall tmux && sudo yum -y remove tmux

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/home/justjae/.local/share/mise/installs/node/22.11.0/bin/:$PATH

