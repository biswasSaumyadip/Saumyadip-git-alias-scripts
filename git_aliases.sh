#!/bin/bash

set -e
echo "Setting Git aliases..."

git config --global alias.gs '!git status'
git config --global alias.ps '!git push'
git config --global alias.publish '!git push -u origin HEAD'
git config --global alias.cdf ''
git config --global alias.pr ''
git config --global alias.br '!git branch'
git config --global alias.brr '!git branch -a'
git config --global alias.shm '!git stash push -m'
git config --global alias.shl '!git stash list'
git config --global alias.d '!git diff --color-words'
git config --global alias.sw '!git switch'
git config --global alias.create '!git switch -c'
git config --global alias.fap '!git fetch --prune'
git config --global alias.blame '!git blame -w -M -C'
git config --global alias.alias 'gitmonthfull=git'
git config --global alias.ac '!git add -A && git commit -m'
git config --global alias.undo '!git reset --soft HEAD^'
git config --global alias.uselast '!git stash apply stash@{0}'
git config --global alias.sha "!f() { git stash apply stash@\{$1\}; }; f"
git config --global alias.shs "!f() { git stash show -p stash@\{$1\}; }; f"
git config --global alias.shaf "!f() { git checkout stash@\{$1\} -- ; }; f"
git config --global alias.qa '!git commit -m'
git config --global alias.reset-hard '!git reset --hard HEAD^'
git config --global alias.alias-add "!f() { git config --global alias.\"$1\" \"$2\"; }; f"
git config --global alias.lol 'log --oneline'
git config --global alias.delete-branch "!f() { git branch -d \$1; }; f"
git config --global alias.find "!f() { git log --all --grep=\"\$1\"; }; f"
git config --global alias.copypath '!git rev-parse --show-toplevel | sed -e s#/#\\\\\\\\#g | clip'
git config --global alias.log-month "'!git"
git config --global alias.aliases '!git config --get-regexp "alias\\."'
git config --global alias.today 'log --since=midnight --oneline --graph'
git config --global alias.this-week "log --since='1 week ago' --oneline --graph"
git config --global alias.this-month "log --since='\$(date +%Y-%m-01)' --oneline --graph"
git config --global alias.yesterday "log --since='yesterday' --until='midnight' --oneline --graph"
git config --global alias.last-7-days "log --since='7 days ago' --oneline --graph"
git config --global alias.today-diff 'log --since=midnight -p'
git config --global alias.today-me "log --since=midnight --author='\$(git config user.name)' --oneline --graph"
git config --global alias.today-time "log --since=midnight --pretty=format:'%h %ad | %s [%an]' --date=short"
git config --global alias.last 'log -1 --stat'
git config --global alias.clean-slate 'reset --hard && git clean -fd'
git config --global alias.push-safe 'push --force-with-lease'
git config --global alias.push-all 'push --all'
git config --global alias.pull-safe 'pull --ff-only'
git config --global alias.branches 'branch -v'
git config --global alias.recent-branches "for-each-ref --sort=-committerdate --format='%(refname:short) - %(committerdate:relative)' refs/heads/"
git config --global alias.remote-branches 'branch -r'
git config --global alias.ignored 'ls-files --others --ignored --exclude-standard'
git config --global alias.top-contributors 'shortlog -sn --all'
git config --global alias.config 'config --list --global'
git config --global alias.squash 'rebase -i HEAD~5'
git config --global alias.history "log --pretty=format:'%h %ad | %s [%an]' --date=short"
git config --global alias.edit-last 'commit --amend'
git config --global alias.uncommit 'reset --soft HEAD~1'
git config --global alias.modified 'ls-files -m'
git config --global alias.pushnew "!f() { git push --set-upstream origin \$(git branch --show-current); }; f"
git config --global alias.colast 'checkout -'
git config --global alias.pull-rebase 'pull --rebase'
git config --global alias.prep 'pull --rebase'
git config --global alias.sync-safe "!f() { git pull --ff-only && git push; }; f"
git config --global alias.acp "!git add -p && read -p 'Commit message: ' msg && git commit -m \"\$msg\" && git push"
git config --global alias.update-all "!git fetch --all --prune && for branch in \$(git branch --format=%(refname:short)); do git checkout \$branch && git pull --ff-only; done && git checkout -"
git config --global alias.alias.fixmsh '!git commit --amend -m'

echo "All aliases added successfully."
