#!/bin/zsh
. .symlink_home --force
. .install_everything

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: make ssh key?

# setup git completion
mkdir -p ~/bin
cp ~/dotfiles/git-filter-repo ~/bin
