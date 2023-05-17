#!/bin/bash
. .symlink_home --force
. .install_everything

# TODO: make ssh key?
mkdir -p ~/bin
cp ~/dotfiles/git-filter-repo ~/bin
