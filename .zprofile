# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/.local/share/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zprofile.pre.zsh"
alias sbash="source ~/.zshrc"
alias vbash="vim ~/.zshrc"

source ~/.bash_profile

# eval "$(/opt/homebrew/bin/brew shellenv)"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/.local/share/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/.local/share/amazon-q/shell/zprofile.post.zsh"
