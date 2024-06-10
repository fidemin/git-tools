#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 base_branch target_branch"
    exit 1
fi

base_branch=$1
target_branch=$2

# Rebase the target branch onto the base branch
git checkout $target_branch
git rebase -i $base_branch

