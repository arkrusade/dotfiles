source .bashrc

# Set PATH, MANPATH, etc., for Homebrew. 
eval "$(/opt/homebrew/bin/brew shellenv)"

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
