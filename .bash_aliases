# TODO: dependant on shell variable? and idk difference betwen profile/bashrc
# port to zsh
if [ $SHELL = '/bin/bash' ]
then
    alias sbash="source ~/.bashrc"
    alias vbash="vim ~/.bashrc"
else
    alias sbash="source ~/.zshrc"
    alias vbash="vim ~/.zshrc"
fi
alias vbasha="vim ~/.bash_aliases"

alias curr="cd $HOME/current"

# alias shad="ssh-add ~/.ssh/id_rsa"
alias shad="ssh-add"
# alias caen="~/caen"

# alias lastc="history 2 | head -1 | cut -c 8-"
# alias lastc="lcmd=$(history 2 | head -1 | cut -c 8-); echo lcmd is $lcmd"
alias clp='echo !! | clip.exe'

# TODO: remove once ohmyzsh osx/git aliases are included
alias ls="ls --color=auto"
alias ll="ls -lhA"
alias la="ls -A"
alias gr="git reset"
alias gs="git status"
alias gst="git stash"
alias gl="git log"
alias gd="git diff"
alias gdn="git diff --name-only"

# alias git="hub"
# alias hub="$CYG_HOME/AppData/Local/GitHubCLI/bin/hub.exe"


# export JOURNAL_FILE="~/dotfiles/env/journal.txt"
export JOURNAL_DIR="~/amazon/mystuff/"
export JOURNAL_FILE="~/amazon/mystuff/amazon-journal.md"

alias journal="vim $JOURNAL_FILE -c 'set nonumber'"
alias newj='vim '$JOURNAL_FILE' -c "set nonumber" -c "r!date"; if [ $? -eq 0 ]; then pushd '$JOURNAL_DIR'; git add '$JOURNAL_FILE'; git commit -m "journal `date +"%D %T %Z"`"; popd; fi'


# export FORGET_FILE='~/amazon/mystuff/reference/tech-forget'
export FORGET_FILE='~/.always_forget.txt'
alias forget="grep $FORGET_FILE"
alias newforget="vim $FORGET_FILE"

### Python aliases and related commands

alias python="python3"
alias menv="python3 -m venv env"
alias senv="source env/bin/activate"
alias denv="deactivate"

alias nest="npx @nestjs/cli"

### Directory aliases

# TODO: allow to change existing aliases, instead of just making new ones
# line for directory aliases
