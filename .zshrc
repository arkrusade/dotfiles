source ~/.bashrc
# Set PATH, MANPATH, etc., for Homebrew. 
eval "$(/opt/homebrew/bin/brew shellenv)"

TWILIO_AC_ZSH_SETUP_PATH=/Users/justinlee/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH; # twilio autocomplete setup

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
autoload -U colors && colors
# [%D{%d/%m/%y %H:%M:%S}]
PS1='%{$fg[magenta]%}[%D{%H:%M:%S}] %{$fg[cyan]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[green]%}${vcs_info_msg_0_} '$'\n''%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}$ '
eval

# bindkey -M vicmd '/' history-incremental-search-backward
# bindkey -M vicmd '?' history-incremental-search-forward
bindkey -M viins ^R history-incremental-search-backward
bindkey -M viins ^S history-incremental-search-forward

# macos nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
eval 
TWILIO_AC_ZSH_SETUP_PATH=/Users/justinlee/.twilio-cli/autocomplete/zsh_setup && test -f $TWILIO_AC_ZSH_SETUP_PATH && source $TWILIO_AC_ZSH_SETUP_PATH; # twilio autocomplete setup
