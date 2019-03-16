#!/bin/bash -e

# Pre-req:
# cd ..
# git clone https://github.com/simonthum/git-sync.git
# export PATH=$PATH:$(pwd)/git-sync
# cd -
# git remote add upstream https://github.com/fastai/fastai.git

function debug() {
    MSG=$1
    echo $(date -u "+%Y-%m-%d %H:%M:%S"): $MSG
}

debug ======================================
debug "git fetch upstream"
git fetch upstream
debug ======================================

debug ======================================
debug "git merge upstream/master"
git merge upstream/master
debug ======================================

#debug ======================================
#debug "git add ."
#git add .
#debug ======================================

debug ======================================
debug "git-sync"
git-sync
debug ======================================

