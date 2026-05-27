#!/bin/zsh
. .symlink_home --force
. .install_everything

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: make ssh key?

# prevent apple music from booting with play button
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# setup git completion
mkdir -p ~/bin
cp ~/dotfiles/git-filter-repo ~/bin
