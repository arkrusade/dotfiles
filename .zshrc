source ~/.bashrc

# Set PATH, MANPATH, etc., for Homebrew. 
eval "$(/opt/homebrew/bin/brew shellenv)"

# Allows capital fixes in tab autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# For git in prompt
## Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
## Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'


##### ZSH SHELL OPTIONS #####

# Add to HISTFILE on command, not just on shell exit
# setopt -o sharehistory

# Set interactive comments on (#)
setopt interactivecomments

# Set up the prompt (with colors, git branch name)
setopt PROMPT_SUBST
autoload -U colors && colors
# Set the prompt
# [%D{%d/%m/%y %H:%M:%S}]
PS1='%{$fg[magenta]%}[%D{%H:%M:%S}] %{$fg[cyan]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}${vcs_info_msg_0_} '$'\n''%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}$ '
eval

# changes run-help to act like bash help
# unalias run-help
autoload run-help
HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
alias help=run-help


# allows backspace to delete uninserted characters
bindkey -v '^?' backward-delete-char

# ctrl-r, ctrl-s to search forwards and backwards through history
# bindkey -M vicmd '/' history-incremental-search-backward
# bindkey -M vicmd '?' history-incremental-search-forward
bindkey -M viins ^R history-incremental-search-backward
bindkey -M viins ^S history-incremental-search-forward

# macos nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
eval

PATH="$PATH:/usr/local/bin"
export PATH="/opt/homebrew/opt/openssl@3.0/bin:$PATH"

# export PATH=$PATH:/Users/justjae/.toolbox/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home"
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
source /Users/justjae/.brazil_completion/zsh_completion
export PERSONAL_BINDLE_ID=amzn1.bindle.resource.35vyraozojazy7aslgidnxrsq

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
