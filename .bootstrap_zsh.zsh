#!/bin/bash
. .symlink_home --force
. .install_everything

# TODO: make ssh key?
mkdir -p ~/bin
cp ~/home/git-filter-repo ~/bin
